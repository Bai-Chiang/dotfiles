function dh --wraps du --description 'alias dh=du -h --max-depth=1'
    command du -h --max-depth=1 $argv
end
