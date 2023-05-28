FROM postgres:latest
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=nayana


# Copy the SQL script that creates the tables into the container
COPY create_tables.sql /docker-entrypoint-initdb.d/

# Copy the SQL script that inserts some initial data into the container
COPY insert_data.sql /docker-entrypoint-initdb.d/

# Set the startup command to run PostgreSQL and execute the SQL scripts
