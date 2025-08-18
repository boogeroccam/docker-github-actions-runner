date:=$(shell date +'v0.%Y%m%d')
ci: docker/full docker/push
docker/base:
	docker buildx build --file base.Dockerfile --platform linux/amd64 --tag registry.fulgur.tech/library/github-runner-base-debian .

docker/full: docker/base
	docker buildx build --file Dockerfile --platform linux/amd64 --tag registry.fulgur.tech/library/github-runner:$(date) .

docker/push:
	docker push registry.fulgur.tech/library/github-runner:$(date)
