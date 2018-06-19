#!/bin/bash

source activate ukms
cd /root/ukms-nb
git pull origin master
jupyter lab --no-browser --allow-root --ip 0.0.0.0
