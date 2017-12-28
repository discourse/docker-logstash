IMAGE := discourse/logstash
TAG := $(shell grep FROM Dockerfile | cut -d: -f2)-$(shell date +%s)
CACHE := $(if $(FORCE),--no-cache,)

.PHONY: push
push: build
	docker push ${IMAGE}:${TAG}

.PHONY: build
build:
	docker build ${CACHE} -t ${IMAGE}:${TAG} .

