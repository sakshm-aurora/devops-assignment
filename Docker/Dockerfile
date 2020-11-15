FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y   curl wget 
RUN apt-get install -y  --no-install-recommends libc6-dev libgdiplus software-properties-common
RUN apt-get install -y  build-essential
RUN apt-get update
RUN apt-get install yasm
RUN wget https://www.ffmpeg.org/releases/ffmpeg-4.0.2.tar.gz
RUN tar -xzf ffmpeg-4.0.2.tar.gz; rm -r ffmpeg-4.0.2.tar.gz
RUN apt-get install -y libmp3lame-dev
RUN apt-get install -y libssl-dev
RUN cd ./ffmpeg-4.0.2; ./configure  --enable-gpl --enable-libmp3lame  --enable-decoder=mjpeg,png --enable-encoder=png --enable-openssl --enable-nonfree

RUN cd ./ffmpeg-4.0.2; make
RUN  cd ./ffmpeg-4.0.2; make install
RUN apt-get install telnet
SHELL ["bin/bash","-c"]
