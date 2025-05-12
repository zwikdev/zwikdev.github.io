#!/usr/bin/env sh

mkdir -p dist/install-data

cp index.html dist/index.html
sed -i "s|<!-- GIT_SHA -->|${GITHUB_SHA:0:8}|" dist/index.html

wget --progress=dot:mega https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-Linux-x86_64.sh -O dist/install-data/Miniforge3-24.3.0-0-Linux-x86_64.sh
wget --progress=dot:mega https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-MacOSX-x86_64.sh -O dist/install-data/Miniforge3-24.3.0-0-MacOSX-x86_64.sh
wget --progress=dot:mega https://github.com/conda-forge/miniforge/releases/download/24.3.0-0/Miniforge3-24.3.0-0-Windows-x86_64.exe -O dist/install-data/Miniforge3-24.3.0-0-Windows-x86_64.exe

cp zwik-client/scripts/zwik_client.py dist/install-data/zwik_client.py
md5sum dist/install-data/zwik_client.py | awk '{printf "%s", $1}' > dist/install-data/zwik_client.py.md5
cp zwik-client/scripts/zwik_client_settings.py dist/install-data/zwik_client_settings.py
md5sum dist/install-data/zwik_client_settings.py | awk '{printf "%s", $1}' > dist/install-data/zwik_client_settings.py.md5

cp zwik-client/scripts/zwik-install.sh dist/zwik-install.sh
cp zwik-client/scripts/zwik-install.bat dist/zwik-install.bat

cp zwik-client/bootstrap/zwik_environment dist/zwik_environment.sh
cp zwik-client/bootstrap/zwik_environment.bat dist/zwik_environment.bat
