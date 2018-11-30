FROM python:3.6-alpine

# Go to working directory.
WORKDIR /app

#Install dependencies
RUN pip install -r requirements.txt

# Add actual source code.
ADD . /app

#Command to launch when container starts
ENTRYPOINT ["python"]

#Parameter to pass to container, can be overridden at docker command line
CMD ["flask_app.py"]
