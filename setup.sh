#!/bin/bash
nohup git -C /notebooks/ pull
nohup sh /notebooks/init_apt.sh

nohup git -C /notebooks/trade/ pull

export DATASET_DIR="/tmp/dataset_cache"
export CHECKPOINT_DIR="/tmp/checkpoints"
export PUBLIC_DATASET_DIR="/datasets"

export PIP_DISABLE_PIP_VERSION_CHECK='1'
export CACHE_DIR='/tmp'
export SHELL='/notebooks/yash'

jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True \
            --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True \
            --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True
