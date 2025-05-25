function dd --description 'alias dd=dd bs=8M conv=sync status=progress'
    command dd $argv bs=8M conv=fsync oflag=direct status=progress

end
