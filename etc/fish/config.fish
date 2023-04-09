if status is-interactive
	atuin init fish | source
	alias ls "exa"
	alias vi "nvim"
	alias grep "rg"
	alias cat "bat"
	alias history "atuin history list"
	
	starship init fish | source
	atuin init fish | source
end