#!/bin/bash
#
# SPDX-FileCopyrightText: Copyright (c) 1993-2025 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

workdir=$(pwd)
# Directory where this script lives (assets)
assets_dir="$(cd "$(dirname "$0")" && pwd)"


cmd="cd $workdir && \
{ [ -d nanochat ] || git clone https://github.com/kentslaney/nanochat-cycled.git nanochat; } && \
cd nanochat && \
mkdir -p runs && \
cp ../speedrun_station.sh ./runs/speedrun.sh && \
cd .. && \
chmod +x launch.sh 2>/dev/null || true && \
docker build -t nanochat ."

sh -c "$cmd"
