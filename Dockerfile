# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Install any necessary system packages
RUN apt-get update && apt-get install -y \
    git

# Install the PyYAML library
RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]