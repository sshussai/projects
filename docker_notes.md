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
FROM ruby:latest # source image

RUN apt install vim # run commands to install needed packages


## Build Image
`docker build -t shaheer/ruby:latest`

## Run a container
`docker run --rm -ti shaheer/ruby:latest /bin/sh`


## Docker command reference
* `docker build` - builds an image using a provided Dockerfile
*  `-t <TAG>` - option to add tags to the build image
*  `-a` - lists all intermediary images
* `docker run` - runs a container given an image
* `docker images` - lists the images availabe on the local system

