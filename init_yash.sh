unset COLUMNS

export OLDPATH="${PATH}"
export PATH="${OLDPATH}"
export PATH="/notebooks/.usr/bin:${PATH}"

export EDITOR='micro'
export TF_POPLAR_FLAGS="--executable_cache_path=/tmp/poplar_exec --max_compilation_threads=$(nproc) --max_infeed_threads=$(nproc)"

alias e="${EDITOR}"
alias edit="${EDITOR}"
alias py='python'

VENV_ACTIVATE='/notebooks/.venv/bin/activate'

if test -e ${VENV_ACTIVATE}; then
    . ${VENV_ACTIVATE}
fi

export OLDPYTHONPATH="${PYTHONPATH}"
export PYTHONPATH="${OLDPYTHONPATH}"
export PYTHONPATH="/usr/local/lib/python3.8/dist-packages:${PYTHONPATH}"
export PYTHONPATH="/notebooks/.venv/lib/python3.8/site-packages:${PYTHONPATH}"

export COLORTERM='truecolor'
export XDG_CONFIG_HOME='/notebooks/setting'

mkdir -p /tmp/model

export HISTFILE='/notebooks/.yash_history'
