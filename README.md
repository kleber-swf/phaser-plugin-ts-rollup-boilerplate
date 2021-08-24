# Phaser-CE Plugin Development Boilerplate

This is another [https://phaser.io/download/phaserce](Phaser-CE) Plugin boilerplate project. This one uses [https://www.typescriptlang.org/](typescript) as a development language and [https://rollupjs.org/guide/en/](rollup) as the module bundler.

## How to use it

* Download or clone this repository

* Enter the folder and run
	```
	bash init.sh
	```

* This will prompt the name of your project and module, call a `npm install` and clean up.

* Don't forget to edit the `package.json` file with your configurations and project description.

## How to test it

* Inside the folder run:
	```
	npm run dev
	```
	This will serve the plugin "executable" files and watch source files, transpiling them when they change.

* If you want to see your plugin in action, open a new terminal and run:
	```
	npm run example
	```
	This will serve/watch the files inside the `example` folder, show them in the browser and also watch the plugin "executable" files, refreshing the browser when something changes.

## How to build it

* Just run:
	```
	npm run build
	```
	This will create the `.min.js` bundle of your plugin, ready to be used inside another project.

* If you intend to publish it, you should review the `package.json` and `.npmignore` files.