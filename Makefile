UPSTREAM := $(shell grep FROM Dockerfile | cut -d: -f2)
TIMESTAMP := $(shell date +%s)
IMAGE := discourse/logstash
TAG := ${UPSTREAM}-${TIMESTAMP}
CACHE := $(if $(FORCE),--no-cache,)

.PHONY: push
push: build
	docker push ${IMAGE}:${TAG}

.PHONY: build
build: committed
	docker build ${CACHE} -t ${IMAGE}:${TAG} .

.PHONY: committed
committed:
	@if ! git diff --no-ext-diff --quiet --exit-code || ! git diff-index --cached --quiet HEAD; then \
		echo The working directory is unclean. Commit your changes first.; \
		false; \
	fi

