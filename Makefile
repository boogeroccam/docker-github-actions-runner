
base:
	docker buildx build --file base.Dockerfile --platform linux/amd64 --tag registry.fulgur.tech/library/github-runner-base-debian .

full: base
	docker buildx build --file Dockerfile --platform linux/amd64 --tag registry.fulgur.tech/library/github-runner:`date +'v0.%Y%m%d'` .

push:
    docker push registry.fulgur.tech/library/github-runner:`date +'v0.%Y%m%d'`
