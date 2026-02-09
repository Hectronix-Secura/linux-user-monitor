#!/bin/bash

command -v who >/dev/null || { echo "who not installed"; exit 1; }

source src/menu.sh
main_menu
