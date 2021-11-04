# vim:ft=make:

.PHONY : all

all: build

build:
	docker build -t oexperts/cyberchef-base45:latest .

clean:
	docker rmi oexperts/cyberchef-base45:latest

start:
	docker run -d --rm -p 8000:8000 --name cyberchef-base45 oexperts/cyberchef-base45:latest

stop:
	docker rm -f cyberchef-base45

