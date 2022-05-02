#!/bin/bash

# install python packages
required_pkg='Flask-Migrate Flask-WTF'
pkg_list=($required_pkg)

for package in ${pkg_list[@]};
do
	if [ -z "$(pip list | grep ${package})" ]; then
		pip install ${package}
	else
		echo "${package} already installed"
	fi
done

# run flask app
FLASK_APP=pybo FLASK_ENV=development flask run --host=0.0.0.0 --port=5000
