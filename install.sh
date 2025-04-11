#!/bin/bash

command -v zip > /dev/null
if [ $? -ne 0 ]; then
    echo Command zip not found. Please make sure zip package is installed.
    exit 1
fi

command -v unzip > /dev/null
if [ $? -ne 0 ]; then
    echo Command unzip not found. Please make sure zip package is installed.
    exit 1
fi

FILENAME=huber.orgue
if [ -f "${FILENAME}" ]; then
    rm -f "${FILENAME}"
fi
zip -0 -r "${FILENAME}" * -x fowviel.zip -x install.sh -x Fowviel.ttf -x README.md -x LICENSE
CURDIR="$(pwd)"
cd ~
USERDIR="$(pwd)"
TARGET="${USERDIR}/GrandOrgue/Organ packages/"
cd "${CURDIR}"
if [ ! -d "${TARGET}" ]; then
    echo
    echo "Organ packages directory not found. Do you have GrandOrgue installed?"
    echo "If yes, please move the file huber.orgue manually to the organ packages"
    echo "directory or use the install menu from GrandOrgue"
    echo
else
    if [ -f "${TARGET}${FILENAME}" ]; then
        rm -f "${TARGET}${FILENAME}"
    fi
    mv "${FILENAME}" "${TARGET}${FILENAME}"
fi
unzip -o fowviel.zip
TARGET="${USERDIR}/.local/share/fonts/"
if [ ! -d "${TARGET}" ]; then
    mkdir -p "${TARGET}"
fi
if [ ! -d "${TARGET}" ]; then
    echo
    echo "Local font directory not found."
    echo "Please copy the font file Fowviel.ttf to your local font directory"
    echo
else
    FILENAME=Fowviel.ttf
    if [ -f "${TARGET}${FILENAME}" ]; then
        rm -f "${TARGET}${FILENAME}"
    fi
    mv "${FILENAME}" "${TARGET}${FILENAME}"
fi

echo
echo DONE
echo