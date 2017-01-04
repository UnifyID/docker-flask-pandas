RELEASE = 0.19.2

all: test

build:
	docker build -t joewhaley/docker-flask-pandas:$(RELEASE) .

test:
	docker run joewhaley/docker-flask-pandas:$(RELEASE) python -c 'import pandas'
