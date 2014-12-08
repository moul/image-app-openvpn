Official Openvpn image on Online Labs
====================================

Scripts to build the official Openvpn image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the official [Ubuntu](https://github.com/online-labs/image-ubuntu) image.

The OpenVPN image can be used as a standard VPN but can be required for some kind of apps (see the [time machine](https://github.com/online-labs/image-app-timemachine) image)

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.**

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

---

Commands
--------

    # build the image in a rootfs directory
    $ make rootfs

    # write the image to /dev/nbd1
    $ make install_on_disk

Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands

Credits
-------

Greatly inspired by https://github.com/jpetazzo/dockvpn/
