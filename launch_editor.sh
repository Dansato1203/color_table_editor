#! /bin/bash

DOCKER_IMAGE="color_table_editor:latest"

docker run -it --rm \
	-e DISPLAY \
	--privileged \
	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	--name color_table_editor \
	-v $PWD/$1:/src/label_img:rw \
	$DOCKER_IMAGE bash
