#!/usr/bin/env sh

ls -al

mkdir -p install-data

wget https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-Linux-x86_64.sh -O install-data/Miniforge3-24.3.0-0-Linux-x86_64.sh
wget https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-MacOSX-x86_64.sh -O install-data/Miniforge3-24.3.0-0-MacOSX-x86_64.sh
wget https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-Windows-x86_64.exe -O install-data/Miniforge3-24.3.0-0-Windows-x86_64.exe

cp zwik-client/scripts/zwik-install.sh install-data/zwik-install.sh
cp zwik-client/scripts/zwik-install.bat install-data/zwik-install.bat

cp zwik-client/scripts/zwik_client.py install-data/zwik_client.py
cp zwik-client/scripts/zwik_client_settings.py install-data/zwik_client_settings.py

cp zwik-client/bootstrap/zwik_environment zwik_environment.sh
cp zwik-client/bootstrap/zwik_environment.bat zwik_environment.bat
