FROM ubuntu:18.04
COPY . ./app
RUN apt-get update && apt-get install -y python-pip
RUN apt-get install -y python-wxgtk3.0
RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    flex \
    bison \
    gcc-multilib \
    python-minimal \
    graphviz \ 
    python-dev 
RUN cd /app/src && ./build.sh
CMD cd /app/gui && ./scyther-gui.py