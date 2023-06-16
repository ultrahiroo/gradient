#!/bin/bash
nohup git -C /notebooks/ pull

nohup /notebooks/command/setup_apt
nohup /notebooks/command/setup_jupyter

nohup git -C /notebooks/trading/ pull

if test -e /notebooks/trading/; then
    cd /notebooks/trading/
    nohup ./command/setup_ld
    cd -
fi

export PIP_DISABLE_PIP_VERSION_CHECK='1'
export CACHE_DIR='/tmp'
# export SHELL='/notebooks/command/yash'
jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True \
            --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True \
            --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True
