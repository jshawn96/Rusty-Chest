FROM fedora:31
LABEL Description = "Rusty Chest"

RUN dnf update
RUN dnf install -y  openssl-devel rustc cargo

# Create working directory
COPY . /opt
WORKDIR /opt
