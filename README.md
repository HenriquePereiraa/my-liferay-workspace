# This is a sample example about, how set up the Liferay Workspace
    - This example are using the mysql database and bringing up the environment with docker

## Creating a Liferay Workspace with Blade CLI
- blade init -v [Liferay version] [workspace name]
    - Example:
        *blade init -v 7.4 my-workspace-name*

## Using the Themes Generator with Liferay Workspace
- blade create -t js-theme [project-name]
    - Execute this command inside folder of your workspace 


### For bringing up the portal execute the command below:
    - In the project root execute: ```docker compose -p my-workspace up --build```
