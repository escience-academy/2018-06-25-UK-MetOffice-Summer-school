#!/bin/bash

source activate ukms
cd /root/ukms-nb
jupyter lab --no-browser --allow-root --ip 0.0.0.0
