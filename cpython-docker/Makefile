PROJECT_HOME:=$(HOME)/code/cpython
IMG_NAME:=cpython-fedora-img


.PHONY: build
build:
	docker build -t $(IMG_NAME) .

.PHONY: shell
shell:
	sudo docker run -it --rm \
		-v $(PROJECT_HOME):/code/cpython:z \
		$(IMG_NAME) \
		/bin/bash
