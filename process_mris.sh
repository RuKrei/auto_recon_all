#!/bin/bash
docker run \
    -it \
    -v /home/idrael/git/auto_recon_all/app/input:/app/input \
    -v /home/idrael/git/auto_recon_all/app/output:/app/output \
rukrei/auto_recon_all:0.1 \
python3 ./do_recon_all_nipype.py -f /app/input/ -s all