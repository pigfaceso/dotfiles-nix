build:
	home-manager switch --flake .

fedora:
	dnf install nix nix-daemon
	systemctl enable --now nix-daemon
