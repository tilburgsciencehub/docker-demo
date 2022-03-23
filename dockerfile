# Define base image/operating system
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install software
RUN apt-get update && apt-get install -y --no-install-recommends build-essential \
 python3.9 python3-dev python3-pip r-base
RUN ln -s /usr/bin/python3 /usr/bin/python

# Set container's working directory
WORKDIR /docker-demo

# Copy files and directory structure to working directory
COPY . .

# Install necessary packages for Python and R
RUN pip3 install -r src/requirements.txt
RUN Rscript src/packages.R

# Run commands specified in "instruction.sh" to get started
ENTRYPOINT ["run.sh", "src/run.sh"]
