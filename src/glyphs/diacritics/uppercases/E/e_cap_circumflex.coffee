exports.glyphs['e_cap_circumflex'] =
	unicode: 'Ê'
	glyphName: 'Ecircumflex'
	characterName: 'LATIN CAPITAL LETTER E WITH CIRCUMFLEX'
	base: 'E_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
