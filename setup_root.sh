#!/usr/bin/env bash

for FILE in bashrc bash_w bash_aliases bash_go; do
  sudo rm -f /root/.$FILE
  sudo ln -s /home/jcalabro/.$FILE /root/.$FILE
done

sudo rm -rf /root/.config
sudo ln -s /home/jcalabro/.config /root/.config
