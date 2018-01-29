IMAGE := discourse/logstash
TAG := $(shell grep FROM Dockerfile | cut -d: -f2)-$(shell date -u +%Y%m%d.%H%M%S)

.PHONY: push
push: build
	docker push ${IMAGE}:${TAG}

.PHONY: build
build:
	docker build --no-cache -t ${IMAGE}:${TAG} .

