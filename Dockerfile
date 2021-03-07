FROM nvcr.io/nvidia/cuda:11.2.1-devel-ubuntu20.04
WORKDIR /usr/src/jupyter-cuda-nvidia-dev/

EXPOSE 5678

ENV SETUSER=ds-gpu-user

RUN useradd -m $SETUSER
USER $SETUSER
WORKDIR /home/$SETUSER

WORKDIR /usr/src/jupyter-cuda-nvidia-dev/

COPY /docker-dependencies/install-data-science-tools.sh .

CMD /bin/bash -c "source /root/.bashrc && /usr/src/jupyter-cuda-nvidia-dev/install-data-science-tools.sh"

WORKDIR /usr/src/jupyter-cuda-nvidia-dev/notebooks

CMD /bin/bash -c "source /root/.bashrc && /usr/src/jupyter-cuda-nvidia-dev/install-data-science-tools.sh && /usr/src/jupyter-cuda-nvidia-dev/entrypoint.sh"
