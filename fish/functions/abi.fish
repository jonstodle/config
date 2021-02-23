# Defined in - @ line 1
function abi --wraps='/opt/homebrew/bin/brew install' --description 'alias abi=/opt/homebrew/bin/brew install'
  /opt/homebrew/bin/brew install $argv;
end
