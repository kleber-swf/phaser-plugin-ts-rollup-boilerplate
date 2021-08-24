#!/bin/bash

set -e

# prompt for package name
while : ; do
	while [ -z $PACKAGE_NAME ]; do
		read -e -p 'Project name (use kebab-case): ' PACKAGE_NAME
	done
	
	if echo "$PACKAGE_NAME" | grep -e '^[a-z0-9\-]\+$'; then
		break
	else
		PACKAGE_NAME=''
		echo 'Please use kebab-case'
		echo
	fi
done

# prompt for module name
while : ; do
	while [ -z $MODULE_NAME ]; do
		read -e -p 'Module name (use PascalCase or camelCase): ' MODULE_NAME
	done
	
	if echo "$MODULE_NAME" | grep -i -e '^[a-z0-9]\+$'; then
		break
	else
		MODULE_NAME=''
		echo 'Please use PascalCase or camelCase'
		echo
	fi
done


# update files
FILES=( './package.json' './example/game.js' )

for FILE in ${FILES[@]}; do
	sed -i -e 's/phaser-plugin-ts-rollup-boilerplate/'$PACKAGE_NAME'/g' $FILE
	sed -i -e 's/PhaserPluginTsRollupBoilerplate/'$MODULE_NAME'/g' $FILE
done

# install dependencies
npm i

# cleanup
rm -f init.sh

# finish
echo 
echo 'Done'
echo