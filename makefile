# Variables
DOCKER_COMPOSE = docker-compose
IMAGE_NAME = neovim_image

# Build the Docker image with the specified name
install:
	$(DOCKER_COMPOSE) build --build-arg IMAGE_NAME=$(IMAGE_NAME)

# Start the containers (calls install first to ensure the image is built)
up: install
	$(DOCKER_COMPOSE) up -d

# Stop the containers
stop:
	$(DOCKER_COMPOSE) stop

# Stop and remove the containers
down:
	$(DOCKER_COMPOSE) down

# Run a bash session inside the container
run:
	$(DOCKER_COMPOSE) exec neovim /bin/bash

# Rebuild the container, clean up, and start again
rebuild: clean
	$(DOCKER_COMPOSE) down
	$(DOCKER_COMPOSE) up --build -d

# View container logs
logs:
	$(DOCKER_COMPOSE) logs -f

# Clean up Docker images and containers
clean:
	docker system prune -af
	docker volume prune -f

# Start Neovim and run :Tutor
tutor:
	$(DOCKER_COMPOSE) exec neovim nvim -c ":Tutor"

# Start Neovim and run :help
help:
	$(DOCKER_COMPOSE) exec neovim nvim -c ":help"

# Uninstall by stopping containers and removing the image
uninstall: down
	docker rmi $(IMAGE_NAME)
