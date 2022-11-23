FROM python:3.10.0-slim-bullseye

ENV DB_USER=postgres
ENV DB_ADMIN_PASSWORD=simple_pass
ENV DB_NAME=postgres
ENV DB_SCHEMA=public

COPY . .

# Update and install system packages
RUN apt-get update -y 
RUN pip install --upgrade pip

# Install dbt
RUN pip install -r requirements.txt

ENTRYPOINT ["bash","init.sh"]
