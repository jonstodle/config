starship init fish | source
zoxide init fish | source
set -gx VOLTA_HOME "/Users/jon/.volta"
string match -r ".volta" "$PATH" > /dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH
