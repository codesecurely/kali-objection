docker run --rm -it \
    -v "$PWD/data":/data \
    -v /dev/bus/usb:/dev/bus/usb \
	--net=host \
	--name objection \
	--privileged \
    kali-objection bash
