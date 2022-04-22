# Ubuntu Desnapified! + Vanilla Gnome 42 desktop

Ready-made ISOs: https://drive.google.com/drive/folders/1WYUpsWM0GV0cDiHzqJfZUJTvqvkqrpgh?usp=sharing

This project is based and improved upon [Ubuntu Remixes](https://gitlab.com/ubuntu-unity/ubuntu-remixes).

To remix an iso you need `mtools` and `xorriso`: 
```sudo apt install mtools xorriso```

This repo now supports building the ISO image using the GitHub actions CI, you can fork the repo if you want to build using CI.

For building on Pop! OS hosts you will also need to install the: ```squashfs-tools``` and ```grub-common``` packages before building. (Dont't worry it will not install GRUB)

To download a fresh iso from ubuntu servers (this will also start re-assembling it with your modifications): 
```./fetch_build```


To remix again without downloading:
```sudo make```

To clean up after yourself:
```sudo make clean```

To change what modifications to apply, change `build/remix.sh` file.

To change where to get iso from, change `fetch_build.conf` file.

To change how your ISO is presented in it's GRUB2, change `grub.cfg` file.
