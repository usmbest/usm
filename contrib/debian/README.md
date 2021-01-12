
Debian
====================
This directory contains files used to package usmd/usm-qt
for Debian-based Linux systems. If you compile usmd/usm-qt yourself, there are some useful files here.

## usm: URI support ##


usm-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install usm-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your usm-qt binary to `/usr/bin`
and the `../../share/pixmaps/ctp128.png` to `/usr/share/pixmaps`

usm-qt.protocol (KDE)

