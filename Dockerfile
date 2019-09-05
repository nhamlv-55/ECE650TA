#Download base image ubuntu 16.04
FROM ubuntu:16.04
 
# Update Software repository
RUN apt-get update

# Install necessary package
RUN apt install -y python python3 build-essential git cmake nano ipython gdb

