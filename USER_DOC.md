Understand what services are provided by the stack

To start the project, use "make" or "make up" to compile the program then access the wordpress going to https://umosse@42.fr or https://localhost. To then stop the project, use "make down" or "make clean" to wipe all data concerning the project from your computer.

To access the administration panel, add wp-admin to the url you used to access the wordpress page. There, you wll have to login using credentials in the .env file that correspond to : WP_ADMIN_USER and WP_ADMIN_PASSWORD. These can be modified at will as long as you make clean then make up again.

Check if the services are running properly.