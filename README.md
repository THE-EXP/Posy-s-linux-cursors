# Posy-s-linux-cursors
#### A port of Posy's cursors to linux
Important note: I do not own original assets of those cursors, they all belong to Posy(aka Michiel) and available at [his site](http://www.michieldb.nl/other/cursors/) I only renamed them and generated X11 cursors with [win2xcur](https://package.wiki/win2xcur)

Below, there is a guide for manual installation(all assuming you have downloaded and unpacked all files of this repo with `Download .zip` option in `~/Downloads`), howewer, you can use the scripts for automated install instead, all code in the installation scripts is written by me and is open for any review by you(if you understand what all the written code means) if you have any reason not to trust me as an unknown developer

any errors while using the pack should be reported in issues tab of this repo

## Installation guide
#### First way(Root Nautilus(Gnome))
1. Open terminal by Pressing `Ctrl+Alt+T` or locating it in application menu
2. Open Root Nautilus explorer with:
``` shell
sudo nautilus
```
3. Locate your downloads directory, located at `/home/<username>/Downloads` where `<username>` is your username on your linux installation
4. Select desired sets of cursors to be added to your availability and press `Ctrl+C` or `RMB` and then `Copy`
5. Navigate to `/usr/share/icons` and paste the copied files there
6. Install `gnome-tweaks`(if not already) tool from terminal using:
``` shell
sudo apt install gnome-tweaks
```
7. Open the Tweaks tool that should have appeared in your applications menu in the `Utilities` folder
8. Click on `Appearance` tab in the side menu
9. Select your newly installed set of cursors in the drop-down menu across `cursors` marking
10. Enjoy!

#### Second way(terminal only)
1. Open terminal by Pressing `Ctrl+Alt+T` or locating it in application menu
2. chmod your `/usr/share/icons` folder using:
``` shell
sudo chmod 7777 /usr/share/icons
```
3. Copy desired pack(s) to `/usr/share/icons` using:
``` shell
cp -R ~/Downloads/<Pack Name> /usr/share/icons
```
Here `<Pack Name>` is one of four pack names `Posy-White`, `Posy-White-Mono`, `Posy-Black`, `Posy-Black-Mono`

4. Install `gnome-tweaks`(if not already) tool from terminal using:
``` shell
sudo apt install gnome-tweaks
```
5. Open the Tweaks tool that should have appeared in your applications menu in the `Utilities` folder
6. Click on `Appearance` tab in the side menu
7. Select your newly installed set of cursors in the drop-down menu across `cursors` marking
8. Enjoy!

#### Third Way(Script)
1. Install `gnome-tweaks`(if not already) tool from terminal using:
``` shell
sudo apt install gnome-tweaks
```
2. Navigate to the folder that the `.zip` archive was unpacked to
3. Press `RMB` and then `Open in terminal`
4. Launch the installation script by typing:
``` shell
./install.sh
```
Please note that the installation requires Root privileges, when prompted, please authenticate by typing your root user password(usually the same as your user password)(Important Note!: The password prompt opened by the system because script uses `sudo` command to set permisions on writing to `/usr/share/icons` the password is not saved in the script, moreover, script resets write permissions on that directory after it completes the installation, gives you instructions, and then stops)
