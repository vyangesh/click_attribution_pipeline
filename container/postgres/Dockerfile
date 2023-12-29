# image_name : postgres_clik_attribution
# Base image: Official PostgreSQL image
FROM postgres:16.1

# Expose PostgreSQL port for external access
EXPOSE 5432

# Set environment variables for superuser credentials
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Optional: Set a database name
ENV POSTGRES_DB=postgres

# Avoid interactive password prompts during image build
ENV PGPASSWORD=$POSTGRES_PASSWORD
