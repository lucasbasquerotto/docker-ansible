FROM ubuntu:18.04

RUN apt update \
 && apt install -y software-properties-common \
 && apt-add-repository ppa:ansible/ansible -y \
 && apt update \
 && apt install -y ansible git python-pip python3-pip \
 && yes | pip install docker-py boto boto3 botocore 'dopy>=0.3.5,<=0.3.5'
