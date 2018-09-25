all:
	pytest
	coverage run package/*.py
	pylint package/
	flake8 package/
	pytest --cov=./

install:
	pip install -r requirements.txt

coverage:
	coverage run package/*.py

lint:
	pylint package/
	flake8 package/

test:
	pylint package/
	flake8 package/
	pytest --cov=./

docs:
	#get from alex