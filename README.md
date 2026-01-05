_This project has been created as part of the 42 curriculum by umosse._

Table of Contents
- [Description](#Description)
- [Instructions](#Instructions)
- [Resources](#Resources)

## Description

Inception is a required project from the 42 common core. This project aims to help the student understand the ins and outs of Docker and docker-compose by creating a Wordpress site using MariaDB as the database and Nginx as the web server.

[Project subject](https://cdn.intra.42.fr/pdf/pdf/189609/en.subject.pdf)

### Project Description



- This is a bullet point
- This is a second bullet point


```cpp
```

| Service | How to access |
|:-------------:|-------------|
| Wordpress | Access your WordPress site at https://localhost/. Use the admin credentials set in your .env file to log in to the admin dashboard at https://localhost/wp-admin. |
| Adminer   | Manage the database using Adminer at https://localhost/adminer/. Use the database credentials from your .env file to log in. |
| Portfolio | View the portfolio site at http://localhost:8080/. |
| Redis     | Redis is running as a caching service. Check the admin profile for more details through Wordpress. |
| vsftpd    | FTP access is available using the vsftpd service. Use the FTP credentials from your .env file to connect via an FTP client (e.g., FileZilla). |

## Instructions

To run the project, you will first need a .env file which can fill in the following :

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
| make | Start up the program. |
| make up | Same as make. |
| make down | Stop and remove containers and networks. |
| make clean | Remove all unused images, volumes, and delete ~/data which contains . |

You can then access the Wordpress site at https://localhost/ or https://umosse.42.fr/ .

Finally to access the admin dashboard, add wp-admin at the end of the url and login using the value of WP_ADMIN_USER and WP_ADMIN_PASSWORD in your .env file.

> [!WARNING]
There is a sudo rm -rf ~/data in the Makefile, please ensure nothing important is located here.

## Resources



[this is a link](https://cdn.intra.42.fr/pdf/pdf/189609/en.subject.pdf)