# Ubuntu Desnapified! + Vanilla Gnome 40 desktop

Ready-made ISOs: https://drive.google.com/drive/folders/17JxECAwQkHD_nn7n_-45aiB_XDyFGZ0d

This project is based and improved upon [Ubuntu Remixes](https://gitlab.com/ubuntu-unity/ubuntu-remixes).

To remix an iso you need `mtools` and `xorriso`: 
```sudo apt install mtools xorriso```

To download a fresh iso from ubuntu servers (this will also start re-assembling it with your modifications): 
```./fetch_build```

!!!IMPORTANT!!!
While building, an nano editor will pop up because of an Ubuntu package bug that makes vanilla Gnome fail to install.
All you need to do is replace the entry ```gdm3-theme.gresource``` with ```gdm-theme.gresource```.
After you do this, Gnome will be reconfigured and good to go.

To remix again without downloading:
```sudo make```

To clean up after yourself:
```sudo make clean```

To change what modifications to apply, change `build/remix.sh` file.

To change where to get iso from, change `fetch_build.conf` file.

To change how your ISO is presented in it's GRUB2, change `grub.cfg` file.
