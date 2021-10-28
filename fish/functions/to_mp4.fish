# Defined in /var/folders/bd/wq5v09f17z7bk0bk2rkqpt440000gn/T//fish.VajCFp/to_mp4.fish @ line 2
function to_mp4 --description 'Uses ffmpeg to convert a file to mp4 with default settings'
    set split (string split "." $argv[1])
    ffmpeg -i $argv[1] $split[1]".mp4"
end
