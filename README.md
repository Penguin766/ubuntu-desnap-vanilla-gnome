# Ubuntu Desnapified! 

This project is based and improved upon Ubuntu Remixes.

To remix an iso you need `mtools` and `xorriso`: 
```sudo apt install mtools xorriso```

To download a fresh iso from ubuntu servers (this will also start re-assembling it with your modifications): 
```./fetch_build```

To remix again without downloading:
```sudo make```

To clean up after yourself:
```sudo make clean```

To change what modifications to apply, change `build/remix.sh` file.
To change where to get iso from, change `fetch_build.conf` file.
To change how your ISO is presented in it's GRUB2, change `grub.cfg` file.
