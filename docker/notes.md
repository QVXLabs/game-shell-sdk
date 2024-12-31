# Deb Package list Creation
Debian package lists are created by going to the target image on device and running the following command

`dpkg --get-selections | grep -v deinstall | awk '{print $1}' | sed 's/:armhf//g' > pkg-list.tx`

They will often need subsequent modification as the gameshell OS often has some packages that are not in the stock Debian Distro or there are dependency issues.
