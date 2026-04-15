set -euo pipefail


CONFIG_DIR="$HOME/.config"

CONFIG_LINKS=(
	alacritty
	hypr
	nvim
	waybar
	)



link_item(){
	local src="$1"
	local dest="$2"

	if [[ -e "$src" ]];then
		echo "Linking $src to $dest"
		ln -sfT "$src" "$dest"
	else
		echo "Skipping missing item: $src" >&2
	fi

}


for item in "${CONFIG_LINKS[@]}"; do
	link_item "$DOTFILES/$item" "$CONFIG_DIR/$item"
done

link_item "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
link_item "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
link_item "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
