function loadhyprland
	if uwsm check may-start
		exec uwsm start hyprland.desktop
	end
end
