# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
set -gx MAMBA_EXE "$HOME/.local/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "$HOME/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

function mamba --wraps=micromamba --description 'alias mamba=micromamba'
    micromamba $argv
end
