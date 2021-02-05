# kali-objection
A repository with dockerized Kali Linux and Objection and other mobile penetration testing tools, created to help managing dependencies in various distributions.

Put required packages in `packages.txt` file.

Be careful of `--privileged` option while running containers - it may be dangerous, this container is only supposed to help with dependencies mess while pentesting locally. Required to mount `/dev/bus/usb`. It is also possible to use `--device` flag and mount a specific USB device, but it wouldn't survive unplugging and plugging it back again, also it would be necessary to identify the USB device path in `/dev` first. Plug the USB device after the container has been started. Use `lsusb` command to check if it's there.

Build command in `build.sh` file.

Run command in `run.sh` file. After running, it drops a `bash` shell in the container. From there you can interact with mobile device.

Store data such as `.apk` files in `kali-objection/data` directory, which will be mounted as `/data` in the container.
