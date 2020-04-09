FROM alpine:latest
LABEL Description = "rusty_chest"

# set a directory for the app
WORKDIR /opt
# copy all the files to the container
COPY . . 

# install cargo, PostgreSQL
RUN apk add --update cargo postgresql

# install Diesel
RUN cargo install diesel_cli --no-default-features --features postgres

# compile with optimizations
RUN cargo build --release