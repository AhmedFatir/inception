# inception

## Project Overview

Inception is a comprehensive containerized web application project designed to demonstrate the power of Docker and Docker Compose in creating and managing isolated environments for web services. The project sets up a full-fledged web stack comprising MariaDB, Nginx, and WordPress, orchestrated seamlessly using Docker Compose.
This setup allows for scalable, efficient, and portable development and deployment processes, making it ideal for developers, DevOps engineers, and anyone interested in modern web application management.

## For the full explanation of the project, you can check out my [Medium blog](https://medium.com/@afatir.ahmedfatir/unveiling-42-the-network-inception-a-dive-into-docker-and-docker-compose-cfda98d9f4ac) for the complete details.

![](https://github.com/AhmedFatir/AhmedFatir/blob/master/images/Inception.png)

## Key Features
### MariaDB:
A robust and reliable open-source relational database management system.
### Nginx:
A high-performance web server and reverse proxy server.
### WordPress:
A versatile content management system for creating and managing websites.
Docker Compose: Simplifies the orchestration of multiple containerized services, ensuring smooth communication and dependency management.

## Installation

### if you don't have docker and docker-compose on your machine
```bash
$ apt install curl
$ sudo apt install docker.io
$ curl -O -J -L https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-linux-x86_64
$ chmod +x docker-compose-linux-x86_64
$ sudo cp ./docker-compose-linux-x86_64 /usr/bin/docker-compose
```

### if you already have docker and docker-compose installed on your machine
```bash
  git clone https://github.com/AhmedFatir/inception.git
```
```bash
  cd ./inception && sudo make
```
## if you are a 42 student who wants to run this project on the school's Mac, you may need to change the path where Docker Desktop stores its data.
```bash
# Make sure the Docker Desktop is not running.

# Use the rsync command to copy the Docker data directory to the new location
rsync -a ~/Library/Containers/com.docker.docker ~/goinfre/DockerData

#Rename the original directory as a backup if you need to revert
mv ~/Library/Containers/com.docker.docker ~/Library/Containers/com.docker.docker.backup

#Create a symbolic link from the new location back to the original location
ln -s ~/goinfre/DockerData/com.docker.docker ~/Library/Containers/com.docker.docker

#Open Docker > Preferences > Resources > File Sharing > Add ~/goinfre to Shared Paths
```
