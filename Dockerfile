FROM nvcr.io/nvidia/cuda:11.2.1-devel-ubuntu20.04
EXPOSE 5678

WORKDIR /usr/src/notebooks

ENTRYPOINT ./docker-dependencies/entrypoint.sh
