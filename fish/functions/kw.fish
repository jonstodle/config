# Defined in /var/folders/rg/j8xssbds3w74cffsspy6dryw0000gn/T//fish.xuOiSK/kw.fish @ line 2
function kw
	if test (count $argv) -eq 0
		figlet (kubectl config current-context) | lolcat
	else
		figlet (kubectl config use-context $argv) | lolcat
	end

	kubectl get pods
end
