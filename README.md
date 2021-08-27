# Install Instructions

- Please note the install script is still in an alpha state
- Currently the install script only supports the install of Qtile, AwesomeWM, i3-Gaps, Neofetch and Qutebrowser configs.
- The install script DOES NOT install the actual programs, it only installs my configs hosted in this repo.

1. Clone respository to your computer and make the install script executable:
```
git clone https://github.com/DanCarzano/dotfiles
cd dotfiles
chmod +x install.sh
```
2. Launch the install script:
```
./install.sh
```
3. Make sure you go through and backup existing directories. Use the backup section of the install script for this. 

# Qtile

![alt text](https://i.imgur.com/DxRhn3c.png "Qtile Screenshot")

- Config is an edited version of the default config provided by ArcoLinux
- As with the AwesomeWM config, a number of XFCE programs are expected to be installed
- Workplace Icons on the bar are from the Font Awesome 5 Free pack, without this installed you will only see text instead of the workplace icons
- Compositor in use is Picom. Config is expected to be in .config/qtile/scripts/picom.conf
- Picom fork in use is from https://github.com/jonaburg/picom

# AwesomeWM

![alt text](https://i.imgur.com/oCYxAla.png "AwesomeWM Screenshot")

- This config is using FreeDesktop and a heavily modified version of the PowerArrow Theme
- I suggest using XFCE as a base to install AwesomeWM, as this config is looking for a number of standard XFCE programs to function correctly
- The compositor in use is Picom, the config for this is expected to be found in .config/picom/picom.conf

# i3-Gaps

![alt text](https://i.imgur.com/IvTGINw.png "i3-gaps Screenshot")

- I'm no longer supporting i3-gaps as I just don't ever feel the need to use it. This can still provide you with a good starting point though
- This is still a work in progress, however all the underlying configurations all work as intended
- Similar to my AwesomeWM config, a number of standard XFCE programs are required
- Top bar is Polybar, config for this is included
- Font used on Polybar is Ubuntu Regular
- The compositor in use is Picom, the config for this is expected to be found in .config/picom.conf

# Qutebrowser

![alt text](https://i.imgur.com/uI3Skvv.png "Qutebrowser Screenshot")

- Image shown on Qutebrowser is a custom startpage, check my Startpage repo if you would like this aswell
- YouTube Advertisements have been blocked with my Qutebrowser config file
- Status bar has been permanently disabled

# Doom Emacs

![alt text](https://i.imgur.com/xXSMs8K.png "Emacs Screenshot")

- Theme being used is 'doom-dracula, however background colour has been changed
- Primary font is Ubuntu Mono
