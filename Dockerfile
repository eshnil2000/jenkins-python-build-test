FROM python:3.6-alpine

#WORKDIR /app

# Install dependencies.
ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt

# Add actual source code.

ENTRYPOINT ["python"]

CMD ["flask_app.py"]
