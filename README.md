# OpenAI Azure Terraform

Sets up a sample Azure OpenAI infrastructure project with security considered

[![Open in GitHub Codespaces](https://img.shields.io/static/v1?style=for-the-badge&label=GitHub+Codespaces&message=Open&color=brightgreen&logo=github)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=599293758&machine=standardLinux32gb&devcontainer_path=.devcontainer%2Fdevcontainer.json&location=WestUs2)
[![Open in Dev Containers](https://img.shields.io/static/v1?style=for-the-badge&label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/pcpcloudai/openai-enterprise-iac)
[![Open in VS Code for the Web](https://img.shields.io/static/v1?style=for-the-badge&label=VS+Code+for+the+Web&message=Open&color=purple&logo=visualstudiocode)](https://vscode.dev/azure?azdTemplateUrl=https://github.com/pcpcloudai/openai-enterprise-iac)


## Architecture

![OpenAI Diagram PE ](docs/media/runbooks/openaidiagrampe.svg)

- Azure OpenAI is only accessible from this VNET. Please see more information here: https://learn.microsoft.com/en-us/azure/ai-services/cognitive-services-virtual-networks?tabs=portal

## Features

This project framework provides the following features:

- Sets up app service, Azure OpenAI service, cognitive search service, private endpoint, and VNet

## Resources

- [📖 Docs: Configure Foundry Tools virtual networks](https://learn.microsoft.com/en-us/azure/ai-services/cognitive-services-virtual-networks?tabs=portal)
- [📖 Docs: Foundry Models sold by Azure](https://learn.microsoft.com/en-us/azure/ai-services/openai/overview)
- [📖 Docs: What are Foundry Tools?](https://learn.microsoft.com/en-us/azure/ai-services/what-are-ai-services)
