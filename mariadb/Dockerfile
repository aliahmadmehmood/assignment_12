
# Use the official MariaDB image from the Docker Hub
FROM mariadb:latest

# Copy the custom configuration file from the main folder
#COPY ../config.py /etc/mysql/conf.d/

# Set environment variables for MariaDB root user and database
ENV MARIADB_ROOT_PASSWORD=123
ENV MARIADB_DATABASE=flask_db
ENV MARIADB_USER=username
ENV MARIADB_PASSWORD=password

# Expose the default MariaDB port
EXPOSE 3306

# Default command to run when starting the container
CMD ["mysqld"]

