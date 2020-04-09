# Rusty Chest

A clean password manager written in Rust

## Usage

```bash
dnf install podman -y

podman build -t rusty_chest .
podman run -it rusty_chest

# inside container
./target/release/rusty_chest
```
