function dd --wraps dd --description 'alias dd=dd bs=8M conv=noerror,sync status=progress'
    command dd bs=8M conv=noerror,sync status=progress $argv
end
