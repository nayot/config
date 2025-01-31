#!/bin/bash

# Use radeontop to fetch GPU usage
gpu_util=$(radeontop -d - | grep -m 1 'gpu ' | awk '{print $5}' | tr -d ',')
echo "GPU: $gpu_util"

