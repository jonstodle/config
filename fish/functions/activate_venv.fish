# Defined in /var/folders/bd/wq5v09f17z7bk0bk2rkqpt440000gn/T//fish.RAbnYQ/activate_venv.fish @ line 2
function activate_venv --description 'Activates a python virtual environment'
    if test (count $argv) -eq 1
        source $argv[1]"/bin/activate.fish"
    else
        source $PWD"/.venv/bin/activate.fish"
    end
end
