# How to use docker in workflow

## Description
I will use docker to isolate and standardize my work environment for each specific project, so that I'm working on the same work environment, no matter the device. Additionally, this will restrict the dependencies I need for the specific project to that project container

## Usage process
I will create a docker file for the project that will create the image needed for the container for the project. Then everytime I need to work on the project, I will generate the container from that image for it.

### Workflow
1. You create the Dockerfile and define the steps that build up your images
2. You issue the `docker build` command which will build a Docker image from your Dockerfile
3. Now you can use this image to start containers with the `docker run` command

## Dockerfile
```
# source image - this must be the first step
FROM ruby:latest 

# run commands to install needed packages
RUN apt update && apt install \
  vim

# reference: https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/
```


## Build Image
`docker build -t shaheer/ruby:latest .`

## Run a container
`docker run --rm -ti shaheer/ruby:latest /bin/sh`

## Docker command reference
* `docker build [TAGS] [PATH]` - builds an image using a provided docker file
    * `-t <TAG>` - option to add tags to the build image
* `docker run [TAGS] [CMD]` - runs a container given an image
    * `--rm` -  remove the container after it exits
    * `-it` -  runs the container in interactive mode
* `docker images [TAGS]` - lists the images available on the local system
    * `-a` - lists all intermediary images
    * `--filter "dangling=true"` - removes unused versions of images
* `docker rmi [TAGS]` - removes images
    * `docker rmi $(docker images -q --filter "dangling=true")` - removes all dangling images
* `docker volume ls` - list docker volumes
* `docker volume inspect` - inspect docker volumes

## Dockerfile commands
* `FROM` - every Dockerfile starts with FROM, with the introduction of multi-stage builds as of version 17.05, you can have more than one FROM instruction in one Dockerfile.
* `COPY <src>... <dest>. `  - copies files from local machine over to docker container
* `RUN` - let’s run commands.
* `ENV` - used to define environment variables.
* `VOLUME` - used to tell Docker that the stuff you store in that specific directory should be stored on the host file system not in the container file system. 
* `USER` - when root is too mainstream.
* `WORKDIR` - set the working directory.
* `EXPOSE` - get your ports right.
* `ONBUILD` - give more flexibility to your team and clients.
