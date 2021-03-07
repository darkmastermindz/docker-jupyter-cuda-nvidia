# Template: darkmastermindz/docker-jupyter-cuda-nvidia-dev 

Example docker Developer working enviornment for data science development with jupyter notebooks.
Feel free to add issues for suggestions to improve this

1. Clone this repo and use it as a template

2. Make any nessary changes to Dockerfile if needed, build, and run docker image like so:

`docker build -t darkmastermindz/jupyter-cuda-nvidia-dev`

# See how to run with GPU https://docs.docker.com/engine/reference/commandline/run/#access-an-nvidia-gpu
`docker run -p 8888:8888 darkmastermindz/jupyter-cuda-nvidia-dev`
