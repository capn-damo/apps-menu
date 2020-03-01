#!/bin/sh
#
#  parse jgmenu apps module output, for jgmenu

# apps-menu.csv is sourced by apps.csv
MENU_FILE="${HOME}/.config/jgmenu/apps-menu.csv"

# select Applications section from end of jgmenu_run output
jgmenu_run apps | sed -n '/Accessories\,\^checkout/,$p' > "${MENU_FILE}"

# display menu
jgmenu --simple --config-file=.config/jgmenu/appsrc --csv-file=.config/jgmenu/apps.csv

exit
