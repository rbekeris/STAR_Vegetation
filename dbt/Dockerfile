FROM python:3.10.0-slim-bullseye

ENV DB_USER=postgres
ENV DB_ADMIN_PASSWORD=simple_pass
ENV DB_NAME=postgres
ENV DB_SCHEMA=public

COPY dbt_project/ /dbt_project
COPY requirements.txt .
COPY commands.sh /dbt_project/commands.sh

# Update and install system packages
RUN apt-get update -y 
RUN pip install --upgrade pip

# Install dbt
RUN pip install -r requirements.txt

# Install dbt dependencies
WORKDIR /dbt_project
RUN dbt deps

# Specify profiles directory
ENV DBT_PROFILES_DIR=/dbt_project

# since we want to run more than one dbt command on startup, lets place them in a shell script
RUN chmod +x commands.sh

# run dbt 
ENTRYPOINT ["sh", "/dbt_project/commands.sh"]

# Expose port for dbt docs
EXPOSE 8080