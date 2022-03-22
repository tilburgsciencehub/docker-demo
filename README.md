# Docker demo for Empirical Research Projects

This is an example repository for the docker tutorial for empirical research using R and Python, available at https://tilburgsciencehub.com/use/docker.

## Running instructions

- [Install Docker](https://tilburgsciencehub.com/get/docker)
- Clone this repository: `git clone https://github.com/tilburgsciencehub/docker-demo`
- Build the docker image: `docker build -t myname/myimage .`
- Run the docker image: `docker run -it --rm -v "$(pwd)/.:/docker_rpy" myname/myimage`


Warning: Usually, you could run docker containers simply by using `docker run`. However, without the argument `-v`, the docker image will not be able to save any of the generated files (e.g., datasets, analysis output) on the computer.

[__Follow the Docker tutorial for empirical research projects on Tilburg Science Hub now.__](https://tilburgsciencehub.com/setup/docker)
