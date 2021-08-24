const game = new Phaser.Game({
	width: 960,
	height: 540,
	backgroundColor: '#2E2E2E',
	parent: 'game',
	state: { preload, create, update },
});

function preload() {

}

function create() {
	// initializes the plugin
	game.plugins.add(new PhaserAnchoredLayout.Plugin(game));

	// just a dummy text
	game.add.text(480, 270, 'This is a example', {
		fill: '#FFFFFF',
		font: 'bold 30px sans-serif',
		align: 'center',
	}).anchor.set(0.5, 0.5);
}

function update() {

}