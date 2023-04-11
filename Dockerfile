# base image installation
FROM python:3.8

# copy the dependency file to the working directory
COPY requirements.txt .

# installing dependencies
RUN pip install -r requirements.txt

# setting the working directory in the container
WORKDIR /code

# copying the contents of the local src directory to the working directory
COPY play.py .

# command to be executed when the container is started
CMD [ "python", "play.py" ]


