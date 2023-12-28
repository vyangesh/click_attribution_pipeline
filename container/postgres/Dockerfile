# Base image: Official PostgreSQL image
FROM postgres:16.1

# Optional: Expose PostgreSQL port for external access
EXPOSE 5432

# Copy SQL file from host machine to container
COPY SQL/init.sql /docker-entrypoint-initdb.d/init.sql

# Command to run when the container starts
CMD ["postgres"]
