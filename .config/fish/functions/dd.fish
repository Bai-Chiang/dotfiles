function dd --description 'dd bs=8M conv=noerror,sync status=progress'
    command dd bs=8M conv=noerror,sync status=progress $argv
end
