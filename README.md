# ECOMMERCE MICROSERVICE

## Overview of the ecommerce microservice
List of microservices:
| Microservices | Description | Exposed port | Language | Repo and CI/CD technology
| --- | --- | --- |
| [Account Service](https://gitlab.com/HarimbolaSantatra/ecommerce-account) | Manage user accounts | 5010 | Dotnet | Gitlab
| [Shopping Cart](https://gitlab.com/HarimbolaSantatra/ecommerce-shopping-cart) | Handle user's cart and number of items in the shopping cart | 5011 | Dotnet  | Gitlab
| [Product Catalog](https://github.com/HarimbolaSantatra/ecommerce-product-catalogue) | Handle the inventory | 5012 | Dotnet  | Github


## Setup
Clone this repository:

    git clone --recurse-submodules https://gitlab.com/HarimbolaSantatra/ecommerce-microservices

Build the projects and launch the compose file:

    make
    docker compose up -d


## Resources:
- [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
- [Containerize a .NET app](https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=linux&pivots=dotnet-8-0)
