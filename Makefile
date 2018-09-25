all:
	pytest
	pylint package/
	flake8 package/
	# pytest --cov=./

install:
	pip install -r requirements.txt

coverage:
	coverage run package/*.py

lint:
	pylint package/
	flake8 package/

tests:
	pylint package/
	flake8 package/
	pytest --cov=./

docs:
	#get from alex

token:
	CODECOV_TOKEN="754ec358-2c9e-4f15-8123-b44041c1f09b"

codecov-public:
	codecov

codecov-private:
	codecov -t the_repository_upload_token
