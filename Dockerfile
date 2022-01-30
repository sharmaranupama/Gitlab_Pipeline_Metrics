# set base image (host OS)
FROM python:3.8

WORKDIR /code

# copy the dependencies file to the working directory
COPY requirement.txt .

# install dependencies
RUN pip install -r requirement.txt

COPY . .


# command to run on container start
CMD [ "python", "gcexporter.py" ]