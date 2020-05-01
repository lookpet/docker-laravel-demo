export GIT_SHA := $(shell git rev-parse HEAD)

docker-build-php:
	$(call about,Build develop PHP image)
	docker build \
		-t my-super-app-tag \
		-f docker/php-dev/Dockerfile \
		.

docker-build-nginx:
	$(call about,Build NGINX image)
	docker build \
		-t nginx:$(GIT_SHA) \
		-f docker/nginx/Dockerfile \
		.


docker-run-php:
	$(call about,Run develop PHP image)
	docker run \
	-it \
	--rm \
	--name name-you-whant \
	-v $(CURDIR):/app \
	my-super-app-tag

docker-exec-inside:
	docker exec \
	-it \
	 name-you-whant \
	 sh
