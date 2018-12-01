## Test python build test deploy with Jenkins

#### Use simple flask app, with install dependency

#### Use unit tests

#### Docker to deploy flask

### Python v3.6, pipenv

### Build docker image
docker build -t flask_app .

### Execute test
docker run -d -p 4000:5000 flask_app test/test_flaskapi.py

### Execute app
docker run -d -p 5000:5000 flask_app 

### Pipeline defined in Jenkinsfile
Use scripts to deliver and kill jobs. Ensure background job Process ID can be picked up
