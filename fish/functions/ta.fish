function ta --description 'Attach to session 0'
	tmux -u a -t 0 || tmux -u
end
