FROM nvcr.io/nvidia/cuda:11.2.1-devel-ubuntu20.04
LABEL maintainer "Hansel Wei <hello@hanselwei.dev>"

# Change this from root before deploying
USER root

RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade

RUN mkdir src
WORKDIR src/notebook

RUN pip3 install jupyter

## Copy your project files to notebook directory workdirectory
# COPY "/model-app-name" .

## Optional for dev, run script to prep your data (clean) and run your code (training) 
## when this template is used for a project 
# RUN python3 module.py

WORKDIR /src/notebooks

## Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888

# Starts jupyter notebook on port 8888, disable root when deploying
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
