UPSTREAM := $(shell grep FROM Dockerfile | cut -d: -f2)
COMMIT := $(shell git rev-parse --short HEAD)
IMAGE := discourse/logstash
TAG := ${UPSTREAM}-${COMMIT}

.PHONY: push
push: build
	docker push ${IMAGE}:${TAG}

.PHONY: build
build: committed
	docker build -t ${IMAGE}:${TAG} .

.PHONY: committed
committed:
	@if ! git diff --no-ext-diff --quiet --exit-code || ! git diff-index --cached --quiet HEAD; then \
		echo The working directory is unclean. Commit your changes first.; \
		false; \
	fi

