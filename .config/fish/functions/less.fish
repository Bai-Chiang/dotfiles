# Mute PC speaker in less
function less --wraps less --description 'alias less=less -Q'
    command less -Q $argv
end
