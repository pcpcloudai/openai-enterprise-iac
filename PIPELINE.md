# Deployment pipeline — azure-vnet

`.gitlab-ci.yml` deploys the Terraform in `terraform/` to the **dev** environment from the `develop` branch.

| Stage | Job | What it does | When |
| --- | --- | --- | --- |
| validate | `terraform_validate` | `fmt -check`, `init -backend=false`, `validate` | every pipeline, automatic, after the earlier stages |
| plan | `terraform_plan_dev` | plans the changes; the plan is saved as an artifact (`tfplan`, readable `tfplan.txt`) | on `develop`, automatic, after `terraform_validate` |
| apply | `terraform_apply_dev` | applies exactly the plan saved by `terraform_plan_dev` | on `develop`, manual, after `terraform_plan_dev` |
| destroy | `terraform_destroy_dev` | destroys everything the Terraform deployed | on `develop`, manual, at once |

Terraform state is managed by GitLab (state name `dev`): see the project's **Operate → Terraform states**.

## CI/CD variables to create

Settings → CI/CD → Variables, scoped to the `dev` environment. None of them is a secret: the pipeline authenticates with short-lived GitLab OIDC tokens.

### azurerm

Authentication: GitLab OIDC — same as athena-back/infra, athena-devops and data-platform-infrastructure.

| Variable | Value |
| --- | --- |
| `ARM_CLIENT_ID` | Client id of the Entra ID application (or managed identity) trusted for this project's OIDC tokens |
| `ARM_TENANT_ID` | Entra ID tenant id |
| `ARM_SUBSCRIPTION_ID` | Subscription to deploy to |

## Cloud side prerequisite

The cloud must trust the GitLab instance this repository is on as an OIDC issuer, with its URL as the audience (the pipeline sends `$CI_SERVER_URL`, e.g. `https://gitlab.example.com`), for this project and branch (e.g. on Azure: a federated credential on the application with subject `project_path:<group>/<project>:ref_type:branch:ref:develop`).
