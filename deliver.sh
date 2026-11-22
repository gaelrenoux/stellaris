#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Missing argument"
    exit 1
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ ! -d "$SCRIPT_DIR/$1" ]; then
    echo "Wrong mod name"
    exit 2
fi


OLD_DIR_NAME="$(date +'%Y%m%d_%H%M')"

mkdir -p $SCRIPT_DIR/old/$OLD_DIR_NAME
echo "mv ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1 $SCRIPT_DIR/old/$OLD_DIR_NAME"
mv ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1  $SCRIPT_DIR/old/$OLD_DIR_NAME
echo "mv ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1.mod $SCRIPT_DIR/old/$OLD_DIR_NAME"
mv ~/.local/share/Paradox\ Interactive/Stellaris/mod/$1.mod $SCRIPT_DIR/old/$OLD_DIR_NAME
echo "cp -R $SCRIPT_DIR/$1 ~/.local/share/Paradox\ Interactive/Stellaris/mod"
cp -R $SCRIPT_DIR/$1 ~/.local/share/Paradox\ Interactive/Stellaris/mod
echo "cp -R $SCRIPT_DIR/$1.mod ~/.local/share/Paradox\ Interactive/Stellaris/mod"
cp -R $SCRIPT_DIR/$1.mod ~/.local/share/Paradox\ Interactive/Stellaris/mod
