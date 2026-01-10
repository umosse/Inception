_This project has been created as part of the 42 curriculum by umosse._

Table of Contents
- [Description](#Description)
- [Instructions](#Instructions)
- [Resources](#Resources)

## Description

Inception is a required project from the 42 common core. This project aims to help the student understand the ins and outs of Docker and docker-compose by creating a Wordpress site using MariaDB as the database and Nginx as the web server. All three services are isolated in the architecture to manage them independently.

### Project Description

- Why Docker > Virtual machines : Virtual machines virtualize the entirety of a computer which makes both the load on your computer very heavy, often taking multiple GigaBytes of space for a simple script, and your program very slow due to the amount of resources your computer allocates just to run the VM. On the other hand Docker does not virtualize and instead runs your program inside isolated instances called containers which contain everything your program needs to run on, whatever your machine.
- Docker secrets or .env files : While both are used to store sensitive data, Docker secrets are both encrypted and not visible easily while .env files are less secure and protected but a lot easier to access. Docker secrets are also necessary when using Docker swarm which is not used in this project, hence the use of .env files here.
- Docker network vs host network : Host network is the network used by your own computer, which unlike Docker network, is not isolated. Docker network gives each container their own IP adress making the network safer.
- Docker volumes vs bind mounts : Both systems are used to store persistent data. Bind mounts require an absolute path to the data to access it and must be created before running docker while docker volumes are automatically managed by docker, created if they do not exist and reused if they already do.


## Instructions

Before anything, you will need docker and make installed on your machine.

To run the project, you will first need a .env file located in /srcs which can fill in the following :

- SQL_DATABASE
- SQL_USER
- SQL_PASSWORD
- WP_URL
- WP_TITLE
- WP_ADMIN_USER
- WP_ADMIN_PASSWORD
- WP_ADMIN_EMAIL
- WP_GUEST_USER
- WP_GUEST_EMAIL
- WP_GUEST_PASSWORD

Once the .env file is done,

| Makefile command | Expected result |
|:-------------:|-------------|
| make | Build the dockers. |
| make up | Same as make. |
| make down | Stop and remove containers and networks. |
| make clean | Remove all unused images, volumes, and delete ~/data which contains . |

You can then access the Wordpress site at https://localhost/ or https://umosse.42.fr/ .

Finally to access the admin dashboard, add wp-admin at the end of the url and login using the value of WP_ADMIN_USER and WP_ADMIN_PASSWORD in your .env file.

> [!WARNING]
There is a sudo rm -rf ~/data in the Makefile, please ensure nothing important is located here.

## Resources

[Everything Docker](https://docs.docker.com/)

[How to write a good ReadMe file](https://www.freecodecamp.org/news/how-to-write-a-good-readme-file/)

No AI was used for this project.

Huge shoutouts to [vpekdas](https://github.com/vpekdas) for helping me with this project.