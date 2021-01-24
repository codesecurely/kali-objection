docker run --rm -it \
    -v "$PWD/data":/data \
    -v /dev/bus/usb:/dev/bus/usb \
	--name objection \
	--privileged \
    kali-objection bash
