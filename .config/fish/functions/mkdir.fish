function mkdir --wraps mkdir --description 'alias mkdir=mkdir -p'
    command mkdir -p $argv
end
