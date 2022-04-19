# start by pulling the python image
FROM python:3.8-alpine

# copy every content from the local file to the image
COPY ./* .

# switch working directory
WORKDIR .

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# expose port
EXPOSE 5003

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD ["bookings.py" ]