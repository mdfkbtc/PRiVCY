
Debian
====================
This directory contains files used to package privcyd/privcy-qt
for Debian-based Linux systems. If you compile privcyd/privcy-qt yourself, there are some useful files here.

## privcy: URI support ##


privcy-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install privcy-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your privcy-qt binary to `/usr/bin`
and the `../../share/pixmaps/privcy128.png` to `/usr/share/pixmaps`

privcy-qt.protocol (KDE)

