#!/bin/bash

# install python packages
if [ -z "$(pip list | grep Flask-Migrate)" ]; then
	pip install Flask-Migrate
else
	echo "Flask-Migrate already installed"
fi

# run flask app
FLASK_APP=pybo FLASK_ENV=development flask run --host=0.0.0.0 --port=5000
