build:
	podman build -t rusty_chest .

run:
	podman run -p 8888:5000 rusty_chest
	