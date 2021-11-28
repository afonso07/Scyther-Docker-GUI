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
#Place to save and put scypher files, to be bind mounted
RUN mkdir -p ./scyther-files 
CMD ["./app/scyther-gui.py"]