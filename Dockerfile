# Use an official Python runtime as the base image
FROM python:3.12-alpine

# Set the working directory in the container
WORKDIR /opt/project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH .
ENV ALICE_SETTING_IN_DOCKER true

# Install dependencies
#RUN set -xe \
#    && apt-get update \
#    && apt-get install -y --no-install-recommends build-essential \
#    && pip install virtualenvwrapper poetry==1.4.2 \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/*

RUN apk update && \
    apk add --no-cache wget && \
    apk add --no-cache build-base libffi-dev openssl-dev && \
    apk add libpq-dev && \
    apk add python3 py3-pip gcc musl-dev && \
    pip install virtualenvwrapper poetry==1.4.2
# Copy and install Python dependencies
COPY ["poetry.lock", "pyproject.toml", "./"]
RUN poetry install --no-root

# Copy project files
COPY ["README.md", "Makefile", "./"]
COPY app app
COPY local local

# Expose the Django development server port (adjust if needed)
EXPOSE 8000

# Set up the entrypoint
COPY scripts/entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
