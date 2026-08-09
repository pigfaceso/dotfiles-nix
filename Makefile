.PHONY: build
build:
	home-manager switch --flake .

.PHONY: home-manager
home-manager:
	nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
	nix-channel --update

.PHONY: fedora
fedora:
	dnf install nix nix-daemon
	systemctl enable --now nix-daemon

# GNOME
GNOME_EXTENSION_DIR := ./files/gnome-extension
GNOME_EXTENSION_DCONF := /org/gnome/shell/extension

.PHONY: gnome-personal-setup
gnome-personal-setup:
	./files/scripts/gnome-personal-setup

.PHONY: gnome-load-extension
gnome-load-extension:
	dconf load $(GNOME_EXTENSION_DCONF)/paper-wm < $(GNOME_EXTENSION_DIR)/paperwm.conf
