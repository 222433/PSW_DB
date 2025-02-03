# Use the official PostgreSQL image as base
FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER=rootDB
ENV POSTGRES_PASSWORD=root1234
ENV POSTGRES_DB=uni_db

# Copy the initialization SQL script
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5455