#!/usr/bin/env bash

# # # Script para agilizar o ato de configurar o ambiente de SDK do Raspberry Pi Pico. # # #

set -e # Grarante que caso haja falhas na hora de instalar, pare de executar
sudo apt install -y \
build-essential \
cmake \
gcc-arm-none-eabi \
libnewlib-arm-none-eabi \
git \
python3 \
pkg-config \
ninja-build

clear

echo "========== CONFERINDO ARM GCC =========="
arm-none-eabi-gcc --version

echo "========== CONFERINDO CMAKE =========="
cmake --version
