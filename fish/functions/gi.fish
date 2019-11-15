# Defined in /var/folders/rg/j8xssbds3w74cffsspy6dryw0000gn/T//fish.Fln2sR/gi.fish @ line 2
function gi
	set -l defaults macos linux windows clion+all rider intellij+all jetbrains+all monodevelop visualstudio visualstudiocode

	if test (count $argv) -gt 0
		set -a defaults $argv
	end

	curl -sL "https://www.gitignore.io/api/"(string join ',' $defaults)
end
