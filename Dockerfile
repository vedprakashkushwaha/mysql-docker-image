# Use an official MySQL image as the base image
FROM mysql:8.0

# Set the environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=mysqlHas130
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the MySQL port (default is 3306)
EXPOSE 3306

# Copy SQL scripts to initialize the database
COPY sql-scripts/ /docker-entrypoint-initdb.d/

# Start MySQL server when the container runs
CMD ["mysqld"]


# Build the image
# docker build -t mysql-image .

# Run the container

# docker run -d -p 3307:3306 --name my-mysql-container mysql-image

# To connect
# mysql -h 127.0.0.1 -P 3307 -u root -pmysqlHas130
# mysql -h 127.0.0.1 -P 3307 -u myuser -pmypassword