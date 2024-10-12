# MUSIC STREAM MICROSERVICES

## Overview of the music stream microservice
List of microservices:
| Microservices | Description | Exposed port | Language | Repo and CI/CD technology |
| --- | --- | --- | --- | --- |
| [Back-end](https://gitlab.com/HarimbolaSantatra/music-stream) | Backend | 5010 | Dotnet | Gitlab |
| Account | wip | wip | wip | wip |
| Front-end | wip | wip | wip | wip |


## Setup
Clone this repository:

    git clone --recurse-submodules https://github.com/HarimbolaSantatra/music-stream-master.git

Build the projects, start dependencies and launch the compose file:

    make
    sudo ./services.sh
    docker compose up -d
