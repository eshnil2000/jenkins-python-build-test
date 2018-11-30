FROM python:3.6-alpine

# Add actual source code.
ADD . /app

# Go to working directory.
WORKDIR /app

#Install dependencies
RUN pip install -r requirements.txt

#Command to launch when container starts
ENTRYPOINT ["python"]

#Parameter to pass to container, can be overridden at docker command line
CMD ["flaskapi.py"]
