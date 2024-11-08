# Use the official Go base image
FROM ubuntu:latest

WORKDIR /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y s3fs && \
    apt-get clean

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

CMD ["bash", "/app/entrypoint.sh"]