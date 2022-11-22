FROM python:3.11.0-slim-bullseye

COPY . /dbt_project

# Update and install system packages
RUN apt-get update -y 

# Install dbt
RUN pip install -U pip
RUN pip install -r dbt_project/requirements.txt

# Install dbt dependencies
WORKDIR /dbt_project
RUN dbt deps

# Specify profiles directory
ENV DBT_PROFILES_DIR=.dbt

# Expose port for dbt docs
EXPOSE 8080