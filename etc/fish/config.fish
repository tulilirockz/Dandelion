if status is-interactive
	set fish_greeting ""
	alias ls "exa"
	alias vi "nvim"
	alias grep "rg"
	alias cat "bat"
	alias history "atuin history list"
	alias container-just "just -f /etc/justfile"

	starship init fish | source
	atuin init fish | source
end
