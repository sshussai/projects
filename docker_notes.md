# How to use docker in workflow

### Description
I will use docker to isolate and standardize my work environment for each specific project, so that I'm working on the same work environment, no matter the device. Additionally, this will restrict the dependencies I need for the specific project to that project container
Specifically, I will use docker-compose to spin up the containers, and run commands needed to execute the code.

### Usage process
I will copy the docker-compose file presented here for other projects. I will update the file as needed for the projects

### Workflow
1. Make a new folder for the ruby script
2. Copy the `docker-compose` file to the new folder
3. Update the commands as needed 
4. Execute the scrip using `docker-compose up`

### docker-compose file
```
version: '3'
services:
  ruby:
    image: ruby:latest
    # command: bash -c 'gem install httparty && ruby test.rb'
    command: bash -c '<INITIAL COMMAND>'
    working_dir: /usr/app/
    volumes:
      - ./:/usr/app/

# reference: https://stackoverflow.com/questions/48035718/run-ruby-script-in-docker-with-installed-gems/48038885
```

## Docker Reference

### Dockerfile
```
# source image - this must be the first step
FROM ruby:latest 

# run commands to install needed packages
RUN apt update && apt install \
  vim

# reference: https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/
```

### Build Image
`docker build -t shaheer/ruby:latest .`

### Run a container
`docker run --rm -ti shaheer/ruby:latest /bin/sh`

### Docker command
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

### Dockerfile commands
* `FROM` - every Dockerfile starts with FROM, with the introduction of multi-stage builds as of version 17.05, you can have more than one FROM instruction in one Dockerfile.
* `COPY <src>... <dest>. `  - copies files from local machine over to docker container
* `RUN` - let’s run commands.
* `ENV` - used to define environment variables.
* `VOLUME` - used to tell Docker that the stuff you store in that specific directory should be stored on the host file system not in the container file system. 
* `USER` - when root is too mainstream.
* `WORKDIR` - set the working directory.
* `EXPOSE` - get your ports right.
* `ONBUILD` - give more flexibility to your team and clients.
