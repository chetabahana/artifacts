FROM tensorflow/tensorflow:latest-gpu
LABEL version=v0.0.5

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

ENV DEBCONF_NOWARNINGS="yes"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update &>/dev/null 
RUN apt-key adv --keyserver keyserver.ubuntu.com \
--recv-keys A4B469963BF863CC &>/dev/null

RUN apt-get install -y --no-install-recommends \
apt-utils build-essential gcc git gfortran libopenblas-dev \
ffmpeg libsm6 libxext6 python3 python3.8 python3-pip \
python3.8-dev python3.8-venv &>/dev/null

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1
RUN git submodule update --init --recursive

RUN python3.8 -m venv /maps
ADD . /maps

ENV PATH="/maps/bin:${PATH}"
RUN source activate

ENTRYPOINT ["/maps/entrypoint.sh"]
