all:
	cargo run

build:
	podman build -t rusty_chest .

run:
	podman run -it rusty_chest
	