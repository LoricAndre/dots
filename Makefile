modules := (fontconfig kitty nvim zsh hyprlan hyprland)
links := $(patsubst %, link-%, $(modules))

setup: pull paru upgrade install $(links)

pull:
	git pull

paru:
	sudo pacman -S --needed base-devel
	(git clone https://aur.archlinux.org/paru.git /tmp/paru && cd /tmp/paru && makepkg -si) || true

install: packages.list
	paru -S --needed $$(cat packages.list)

upgrade:
	git pull
	paru -Syuu

link-%: %
	cd "$<" && ([ -f setup.sh ] && chmod +x setup.sh && ./setup.sh || ln -sf $(PWD)/$< ~/.config/$<)
