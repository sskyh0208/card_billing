FROM --platform=linux/amd64 python:3.10

RUN apt-get update
RUN apt-get install -y jq wget gettext zip less

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN wget https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_linux_amd64.zip && \
    unzip ./terraform_1.5.4_linux_amd64.zip -d /usr/local/bin/

WORKDIR /workspace