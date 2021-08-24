import Phaser from 'phaser-ce';

export class Plugin extends Phaser.Plugin {
	public constructor(game: Phaser.Game) {
		super(game, game.plugins);
		console.log('Plugin intialized');
	}
}
