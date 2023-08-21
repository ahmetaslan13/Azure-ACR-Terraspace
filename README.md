**Azure Resource Group Terraspace**

This repository contains infrastructure code written using [Terraspace](https://terraspace.cloud/) for creating and managing Azure Resource Groups. Terraspace is a framework for building and managing cloud infrastructure with Terraform. It provides an organized and maintainable way to write infrastructure-as-code (IAC) using the power of Terraform and Ruby.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Configuration](#configuration)
- [Deployment](#deployment)
- [Clean Up](#clean-up)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository demonstrates the use of Terraspace to create and manage Azure Resource Groups. Azure Resource Groups are used to logically organize and manage resources within an Azure subscription. Terraspace helps in simplifying the process of defining, deploying, and managing these resource groups using Terraform.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed.
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and configured.
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) installed (Terraspace uses Ruby for configuration and scripting).

## Getting Started

1. Clone this repository:

   ```sh
   git clone https://github.com/ahmetaslan13/Azure-Resource-Group-Terraspace.git
   ```

2. Navigate to the project directory:

   ```sh
   cd Azure-Resource-Group-Terraspace
   ```

3. Install the required Ruby gems:

   ```sh
   bundle install
   ```

## Configuration

1. Configure your Azure credentials by logging in with Azure CLI:

   ```sh
   az login
   ```

2. Update the Terraspace configuration files located in the `config` directory to customize your deployment settings.

3. Modify the `main.tf` file in the `app/stacks/resource_group` directory to adjust the Azure Resource Group properties as needed.

## Deployment

Deploy the Azure Resource Group using Terraspace:

```sh
bundle exec terraspace up resource_group
```

This command will create the specified Azure Resource Group based on your configuration.

## Clean Up

To remove the deployed resources, use Terraspace to destroy the Azure Resource Group:

```sh
bundle exec terraspace down resource_group
```

## Contributing

Contributions are welcome! If you find any issues or have improvements to suggest, please open a GitHub issue or pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

**Note:** Terraspace abstracts and simplifies the Terraform deployment process by utilizing Ruby for configuration and deployment management. Make sure to refer to Terraspace documentation and Terraform best practices for more advanced usage and customization options.
