#Python based docker image
FROM python:3.10.4-buster

RUN apt-get update && apt-get upgrade -y

#Installing Requirements
RUN apt-get install -y ffmpeg python3-pip opus-tools

#Updating pip
RUN pip3 install -U pip

COPY . .

RUN pip3 install -U -r requirements.txt

#Running VCBot
CMD ["python3","main.py"]
