#!/bin/bash
set -e

source .env

echo "This script will download a few GB of Fedora and a few MB of Kernel into the current directory."
echo "Look inside the script if you would rather download manually."
echo
if [ ! -z "$PS1" ]; then
    read -p "Continue? [y/N] " -n 1 -r
else
    REPLY=y
fi
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Downloading Fedora set in .env file: $FEDORA_IMAGE_URL"
    echo "This may fail if it is set to download a file that is too old."
    echo ""

    # Download fedora
    wget $FEDORA_IMAGE_URL  -O fedora.raw.xz
    xz --decompress fedora.raw.xz
fi
