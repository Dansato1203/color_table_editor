FROM ubuntu:20.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y --no-install-recommends \
	vim \
	git \
	make \
	g++ \
	libopencv-dev \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY . /src/color_table_editor/

WORKDIR /src/color_table_editor
RUN make
