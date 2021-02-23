# Defined in - @ line 1
function abrew --wraps=/opt/homebrew/bin/brew --description 'alias abrew=/opt/homebrew/bin/brew'
  /opt/homebrew/bin/brew  $argv;
end
