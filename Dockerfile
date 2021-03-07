FROM nvcr.io/nvidia/cuda:11.2.1-devel-ubuntu20.04
EXPOSE 5678

WORKDIR /usr/src/jupyter-cuda-nvidia-dev/
COPY ['./docker-dependencies/install-data-science-tools.sh', './']

CMD ["chmod", "+x", "install-data-science-tools.sh"]

WORKDIR /usr/src/jupyter-cuda-nvidia-dev/notebooks
ENTRYPOINT ./docker-dependencies/entrypoint.sh
