# Troubleshooting

This file contains solutions to common problems that you may encounter while using the dotfiles.

## Getting Nvidia Quadro P1000 mobile to work

I couldn't an external monitor connected to my brand new Thinkpad P1 through HDMI until I updated the propietary Nvidia drivers and disabled Kernel mode setting on the Nvidia kernel module.

Keep in mind the HDMI port is wired to the Nvidia graphics card so you'll first have to switch to it either using `Nvidia X Server Settings` or the `prime-select` command line tool. I guess the latter gets installed with the `nvidia-prime` package but I haven't checked. Do not forget to log out and log in again for the changes to take effect.

In order to get the latest Nvidia drivers available I added the `graphics-drivers` PPA repository as follows

```
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
```

Because of this, now `ubuntu-drivers devices` (you can find a nice explanation of this command [here](https://askubuntu.com/a/543329)) listed a couple more options

```
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00001CBBsv000017AAsd00002267bc03sc00i00
vendor   : NVIDIA Corporation
model    : GP107GLM [Quadro P1000 Mobile]
driver   : nvidia-driver-390 - distro non-free
driver   : nvidia-driver-418 - distro non-free
driver   : nvidia-driver-396 - third-party free
driver   : nvidia-driver-415 - third-party free
driver   : nvidia-driver-430 - third-party free recommended
driver   : xserver-xorg-video-nouveau - distro free builtin
```

Particularly `nvidia-driver-430` did not show up before. Unfortunately, the command `sudo apt install nvidia-driver-430` reported an unmet depedencies error so I went the GUI way. You can do so by opening the "Software & Updates" app, choosing the "Additional Drivers" tab. Then, choose "nvidia-driver-430" and "Apply Changes". This took a while.

But it turns out this wasn't enough, even after restarting the system. Finally, I found the solution in <https://www.dell.com/community/Precision-Mobile-Workstations/External-Monitor-not-working-Ubuntu-nvidia/m-p/7286631#M1634>. Apparently the problem is with the [kernel mode setting](https://wiki.archlinux.org/index.php/Kernel_mode_setting#Disabling_modesetting), which needs to be disabled to work.

Editing the file `/lib/modprobe.d/nvidia-kms.conf` to `options nvidia-drm modeset=0` fixed the problem after a reboot 🎉️.

## Recovering Grub after a Lenovo's firmware upgrade

After blindly applying the last firmware upgrade Grub was gone and there was no way to boot anything other than Windows 10. Disabling secure boot and enabling legacy boot didn't help either.

First of all, <https://unix.stackexchange.com/a/475245> shed some light on this giving some clues that led me to the solution. First kind of understood what [UEFI is about](https://www.howtogeek.com/56958/HTG-EXPLAINS-HOW-UEFI-WILL-REPLACE-THE-BIOS/) and what a [EFI system partition is](https://wiki.archlinux.org/index.php/EFI_system_partition), then I run

```
bcdedit /set {bootmgr} path \EFI\ubuntu\grubx64.efi
```

from Window's command prompt as admin, as detailed in <https://itsfoss.com/no-grub-windows-linux/>. Then reading [BCD System Store Settings for UEFI](BCD System Store Settings for UEFI) from Microsoft's Hardware Dev Center made me understand we basically told the Windows Boot Manager that it should boot grub's EFI application instead.

## Pipewire

Sorry, I don't remember all the things I did to make Pipewire work with Wireplumber but <https://pipewire-debian.github.io/pipewire-debian/> seems to be the best reference, togheter with <https://wiki.archlinux.org/title/PipeWire>, to understand and troubleshoot this.

## Pok3r mech keyboard

You can find how to program the pok3r in [[guide] How-to: Program your Pok3r -- Programming Layers and Dipswitch 4](https://www.reddit.com/r/MechanicalKeyboards/comments/35uy60/guide_howto_program_your_pok3r_programming_layers/) from the MechanicalKeyboards subreddit.
