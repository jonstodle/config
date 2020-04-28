# Defined in /var/folders/bd/wq5v09f17z7bk0bk2rkqpt440000gn/T//fish.0SW3p7/create_post.fish @ line 2
function create_post --description 'Creates a new blog post in the current directory'
for tag in $argv[2..-1];
	set -a tags "\"$tag\""
end

set file_name (string lower $argv[1] | string replace -a  " " "-" | string replace -a "'" "")".md"

echo '+++
title = "'$argv[1]'"
date = '(date "+%YT%T%z")'
[taxonomies]
tags = ['(string join ", " tags)']
+++' > $file_name

vim -c "set spell | set spelllang=en" $file_name
end
