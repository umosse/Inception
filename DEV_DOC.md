To set up the environment you need to create a .env file at /srcs and give values to :
- SQL_DATABASE
- SQL_USER
- SQL_PASSWORD
- WP_URL <- this should be your localhost, modify the port if you intend to modify the port of nginx.
- WP_TITLE
- WP_ADMIN_USER
- WP_ADMIN_PASSWORD
- WP_ADMIN_EMAIL <- This must be in the form of xxxxxxxxxx@xxxxxx.xxx
- WP_GUEST_USER
- WP_GUEST_PASSWORD
- WP_GUEST_EMAIL <- This must be in the form of xxxxxxxxxx@xxxxxx.xxx

To build the Project you simply need to use the "make" or "make up" command in your terminal.

To stop the project from running, use make down to stop containers and networks, then use make clean to delete ~/data and remove all images and volumes.

When using "make" or "make up", data folders for wordpress and mariadb are created at ~/data to store volumes, which persist even after a make down or a computer restart.