FROM alpine:latest
LABEL Description = "rusty_chest"

# set a directory for the app
WORKDIR /opt
# copy all the files to the container
COPY . .

# install cargo
RUN apk add --update cargo

# define the port number the container should expose
EXPOSE 5000

# start app
RUN cargo run