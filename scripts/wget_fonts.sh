#!/bin/bash
#
# Downloads the inconsolata font from the Google Fonts repo on GitHub.
#
# Do NOT run as ROOT.

# check not root
./check_root.sh user || exit 1

# get files
wget https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf
wget https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf
wget https://github.com/google/fonts/raw/master/ofl/prata/Prata-Regular.ttf
wget https://github.com/chuahou/badfont/releases/download/v1.1.0/badfont.ttf

# install in ~/.fonts
mkdir -p ~/.fonts
mv *.ttf ~/.fonts
mv *.otf ~/.fonts

# install Victor Mono
wget https://rubjo.github.io/victor-mono/VictorMonoAll.zip
unzip VictorMonoAll.zip -d vm
cp vm/TTF/*.ttf ~/.fonts
cp vm/TTF/*.otf ~/.fonts
rm -rf vm
rm VictorMonoAll.zip

