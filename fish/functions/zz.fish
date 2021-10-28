# Defined in /var/folders/bd/wq5v09f17z7bk0bk2rkqpt440000gn/T//fish.PEeD0e/zz.fish @ line 2
function zz
    set session (zellij ls | head -n 1)
    if test $session = "No active zellij sessions found."
        zellij
    else
        zellij attach $session
    end
end
