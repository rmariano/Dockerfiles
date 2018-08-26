PROJECT_HOME:=$(HOME)/code/cpython
IMG_NAME:=cpython-fedora-img

build:
	docker build -t $(IMG_NAME) .

launch:
	sudo docker run -it --rm \
		-v $(PROJECT_HOME):/code/cpython:z \
		$(IMG_NAME) \
		/bin/bash


.PHONY: build launch
