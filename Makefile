all: build push

PREFIX?=joway
IMAGE?=vue-react-nginx
GIT_COMMIT:=$(shell git rev-parse --short HEAD)

build:
	docker build . -t $(PREFIX)/$(IMAGE):$(GIT_COMMIT)

push:
	docker push $(PREFIX)/$(IMAGE):$(GIT_COMMIT)
	docker tag $(PREFIX)/$(IMAGE):$(GIT_COMMIT) $(PREFIX)/$(IMAGE):latest
	docker push $(PREFIX)/$(IMAGE):latest

.PHONY: all build push
