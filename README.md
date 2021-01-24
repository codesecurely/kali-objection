# kali-objection
A repository with dockerized Kali Linux and Objection and other mobile penetration testing tools 

Put required packages in `packages.txt` file.

Be careful of `--privileged` option while running containers - it may be dangerous, this container is only supposed to help with dependencies mess while pentesting locally.

Store data such as `.apk` files in `kali-objection/data` directory, which will be mounted as `/data` in the container.
