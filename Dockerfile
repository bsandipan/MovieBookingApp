# start by pulling the python image
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install --no-install-recommends -y python3.8 python3-pip python3.8-dev
ADD requirements.txt .
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . .

# switch working directory
WORKDIR .

RUN apt-get -y install supervisor && mkdir -p /var/log/supervisor && mkdir -p /etc/supervisor/conf.d

#copying config file from local to docker image
ADD supervisor.conf /etc/supervisor.conf

# expose port
EXPOSE 5000 5001 5002 5003

# starting supervisord service
CMD ["supervisord", "-c", "/etc/supervisor.conf"]   
