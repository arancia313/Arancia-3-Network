#!/bin/bash
echo "[A3N]: Updating Toolchain sk-gcc."
cd
cd A3/sk-gcc
git reset --hard HEAD
git pull
git submodule update --init --recursive
echo "Done. Giving file permissions."
chmod +x $SKGCC/bin/*
echo "Done."