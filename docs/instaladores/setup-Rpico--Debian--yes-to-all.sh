#!/usr/bin/env bash

# # # Script para agilizar o ato de configurar o ambiente de SDK do Raspberry Pi Pico. # # #

set -e # Grarante que caso haja falhas na hora de instalar, pare de executar

sudo apt install {variavel_flag-y}\
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

[aqui SE o usuario nao colocou a flag -y, deve aparecer uma mensagem perguntando o seguinte "verifique se houve erro se instalacao, caso esteje tudo ok digite o caractere 'Y'"]
echo "========== CRIANDO DIRETORIO DE DESENVOLVIMENTO =========="
mkdir -p ~/dev/pico
cd ~/dev/pico
echo "========== CLONANDO O SDK (Software Development Kit)"
git clone https://github.com/raspberrypi/pico-sdk.git
clear
echo "========== INDO PARA O DIRETORIO DO SDK ==========\n"
cd pico-sdk
echo "========== BAIXANDO SUBMODULOS =========="
git submodule update --init
clear
echo "========== CONFIGURANDO A VARIAVEL DE AMBIENTE DO SDK =========="
echo 'export PICO_SDK_PATH=$HOME/dev/pico/pico-sdk' >> ~/.bashrc
source ~/.bashrc
echo $PICO_SDK_PATH
clear
echo "========== INSTALANDO DEPENDENCIAS DO PICOTOOL =========="
sudo apt install -y cmake build-essential libusb-1.0-0-dev pkg-config git
echo "========== BAIXANDO A FERRAMENTA PICOTOOL =========="
git clone https://github.com/raspberrypi/picotool.git
# FERRAMENTAS ADICIONAIS UTEIS POREM NAO OBRIGATORIAS
# sudo apt install -y minicom screen gdb-multiarch openocd

echo "========== FIM DO SCRIPT ==========\n\ndhdxs\n"


