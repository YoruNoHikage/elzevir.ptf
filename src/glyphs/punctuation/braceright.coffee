# TODO: spacing should not affect width
exports.glyphs['braceright'] =
	unicode: '}'
	glyphName: 'braceright'
	characterName: 'RIGHT CURLY BRACKET'
	ot:
		advanceWidth: contours[0].nodes[5].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 15
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					# x: Math.max(
					# 	spacingLeft + 5,
					# 	(((spacingLeft + 95) + 80 * width) - (( 70 / 90 ) * thickness * 0.75)) - 65
					# )
					x: contours[0].nodes[0].x + 40
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness * contrast
						angle: Math.asin( (( 15 / 90 ) * thickness * contrast) / (( 25 / 90 ) * thickness * contrast) ) - Math.PI
						distr: 0
					})
				2:
					x: Math.max(
						(spacingLeft + 95) + 80 * width,
						contours[0].nodes[1].expandedTo[0].x + ( 70 / 90 ) * thickness
					) - (18)
					y: contours[0].nodes[1].expandedTo[1].y - ( contours[0].nodes[2].x - contours[0].nodes[1].x )
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x
					y: ( 337 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 86 / 90 ) * thickness
						angle: Math.asin( (( 70 / 90 ) * thickness) / (( 86 / 90 ) * thickness) ) + Math.PI / 2
						distr: 0
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x + 50 * width
					y: contours[0].nodes[5].y + ( 15 / 90 ) * thickness * contrast / 2
					dirIn: 180 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 22 / 90 ) * thickness * contrast
						angle: - 154 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x + 5 * width
					y: contours[0].nodes[11].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[0].y - contours[0].nodes[11].expandedTo[0].y ) * 0.5
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[5].y
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
				7:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[5].y - ( 15 / 90 ) * thickness * contrast / 2
					dirOut: 180 + 'deg'
					expand: Object({
						width: ( 22 / 90 ) * thickness * contrast
						angle: 154 + 'deg'
						distr: 0
					})
				8:
					x: contours[0].nodes[2].expandedTo[0].x
					y: ( 202 / 660 ) * capHeight
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 86 / 90 ) * thickness
						angle: Math.PI + ( Math.PI / 2 ) - Math.asin( (( 70 / 90 ) * thickness) / (( 86 / 90 ) * thickness) )
						distr: 0
					})
				9:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[10].expandedTo[1].y + ( contours[0].nodes[2].x - contours[0].nodes[1].x )
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
				10:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[11].expandedTo[0].y
					type: 'smooth'
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * contrast
						angle: Math.PI - Math.asin( (( 15 / 90 ) * thickness * contrast) / (( 25 / 90 ) * thickness * contrast) )
						distr: 0
					})
				11:
					x: spacingLeft
					y: ( 120 / 230 ) * descender
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
