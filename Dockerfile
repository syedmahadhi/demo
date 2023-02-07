FROM ubuntu:20.04
FROM python:3.8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
