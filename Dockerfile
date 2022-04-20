# start by pulling the python image
FROM Ubuntu 20.04 LTS

ADD requirements.txt .
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . .

# switch working directory
WORKDIR .



# expose port
EXPOSE 5000 5001 5002 5003

ADD run.py .
RUN chmod +x /run.py

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]
CMD ["run.py"]