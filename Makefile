RELEASE = 0.18.1

all: test

build:
	docker build -t joewhaley/docker-flask-pandas:$(RELEASE) .

test:
	docker run joewhaley/docker-flask-pandas:$(RELEASE) python -c 'import pandas'
