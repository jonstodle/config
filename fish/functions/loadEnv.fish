# Defined in /var/folders/rg/j8xssbds3w74cffsspy6dryw0000gn/T//fish.HU9Djr/loadEnv.fish @ line 1
function loadEnv
	if test -f './.env'
    export (cat .env | sed "/^#/d")
  end
end
