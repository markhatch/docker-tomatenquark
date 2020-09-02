FROM ubuntu:20.04

WORKDIR /tomatenquark

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    libsdl2-mixer-2.0-0 \
    libsdl2-2.0-0 \
    libsdl2-image-2.0-0 \
    libcurl4 \
&& rm -rf /var/lib/apt/lists/*

RUN wget "https://github.com/tomatenquark/code/releases/download/v0.2.1/tomatenquark_ubuntu.zip" -O tomatenquark_ubuntu.zip \
&& unzip tomatenquark_ubuntu.zip \
&& rm tomatenquark_ubuntu.zip

EXPOSE 28785/udp 28786/udp 

CMD ./bin_unix/linux_64_server