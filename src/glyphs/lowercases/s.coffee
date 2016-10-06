############
# TODO : rebase serifs completely
############
exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].expandedTo[0].x
			y: xHeight + diacriticHeight
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 90, serifCurve * ( 90 / 15 ) ) )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[0], contours[0].nodes[6].expandedTo[0], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ), true )
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[5].expandedTo[1], serifHeight + Math.min( 120, serifCurve * ( 120 / 15 ) ) )

	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 30 + (8)
					# dirOut: Math.min(
					# 	Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point ),
					# 	- Math.PI * ( 20 ) / 180
					# )
					dirOut: Math.min(
						- 23,
						- 70 + 47 * width
					) + 'deg'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 90 + serifRotate * ( 10 ) - 10 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + ( (contours[0].nodes[2].x + ( ( 82 / 90 ) * thickness * 0.75 * Math.cos( - 156 * Math.PI / 180 ) )) - contours[0].nodes[0].x ) * 0.6
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: 76 + 'deg'
						distr: 0
					})
				2:
					# x: 225 + 150 * width - (19)
					x: Math.max(
						225 + 150 * width,
						175 + 200 * width
					) - (19)
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].x + ( contours[0].nodes[6].x - contours[0].nodes[0].x ) * 0.6
					y: contours[0].nodes[0].y + ( contours[0].nodes[6].y - contours[0].nodes[0].y ) * 0.5
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 8,
						Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: Math.max(
							Math.PI / 4 + Math.PI,
							Utils.lineAngle( contours[0].nodes[6].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						)
						distr: 0.5
					})
				4:
					x: 60 + (17)
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * 0.55
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.75
					})
				5:
					# x: contours[0].nodes[4].x + ( contours[0].nodes[6].x - contours[0].nodes[4].x ) * 0.5 - (1)
					# x: (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45
					x: Math.max(
						(contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.75 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.75 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45,
						(contours[0].nodes[4].x - ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x - ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45
					)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: Math.max(
						195 + 150 * width,
						145 + 200 * width
					)
					y: xHeight - 35 - (8)
					# dirIn: Math.min(
					# 	Utils.lineAngle( contours[0].nodes[5].expandedTo[1].point, contours[0].nodes[6].expandedTo[0].point ),
					# 	Math.PI * ( 160 ) / 180
					# )
					dirIn: Math.min(
						146,
						90 + 56 * width
					) + 'deg'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 180 - 90 + serifRotate * ( 10 ) - 10 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif-c'
			parentAnchors:
				0:
					x: anchors[0].baseSerifTop_.x
					y: anchors[0].baseSerifTop_.y
				1:
					x: anchors[0].baseSerifBottom_.x
					y: anchors[0].baseSerifBottom_.y
				2:
					left: false
					directionX: -1
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					rightWidth: 50
					# leftWidth: 20
					angleBottom: anchors[0].baseSerifBottom_.normal
					angleTop: anchors[0].baseSerifTop_.normal
					# maxWidthTop: capHeight + overshoot
					# serifMedianRight: 5
					# serifMedianLeft: 5
					baseRight: contours[0].nodes[0].expandedTo[0].point
					baseLeft: contours[0].nodes[0].expandedTo[1].point
					baseOpposite: contours[0].nodes[0].expandedTo[1].point
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight, true, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1], serifHeight, false, 100 )
					topAngle: contours[0].nodes[0].expandedTo[1].dirIn
					bottomAngle: contours[0].nodes[0].expandedTo[0].dirOut
					serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
					serifTransform: serifRotate * ( -18 ) + 18
				3:
					noneOne: contours[0].nodes[0].expandedTo[0]
					noneTwo:contours[0].nodes[0].expandedTo[1]
					noneThree:contours[0].nodes[1].expandedTo[0]
					noneFour:contours[0].nodes[1].expandedTo[1]
			transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', serifRotate * (-18) + 18 + 'deg' ]
			)
		1:
			base: ['serif-c', 'none']
			id: 'basserif'
			parentAnchors:
				0:
					x: anchors[0].baseSerifTop.x
					y: anchors[0].baseSerifTop.y
				1:
					x: anchors[0].baseSerifBottom.x
					y: anchors[0].baseSerifBottom.y
				2:
					right: false
					baseRight: contours[0].nodes[6].expandedTo[1].point
					baseLeft: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[1], contours[0].nodes[6].expandedTo[1], 1, true, 1 )
					baseOpposite: contours[0].nodes[6].expandedTo[0].point
					angleTop: anchors[0].baseSerifBottom.normal
					angleBottom: anchors[0].baseSerifTop.normal
					# maxWidthBottom: - 50
					# rightWidth: 20
					leftWidth: 40
					# serifMedianRight: 5
					# serifMedianLeft: 5
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[5].expandedTo[0], serifHeight, true, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[1], contours[0].nodes[6].expandedTo[1], serifHeight, true, 100 )
					topAngle: contours[0].nodes[6].expandedTo[0].dirIn
					bottomAngle: contours[0].nodes[6].expandedTo[1].dirOut
					serifTransformOrigin: Array( contours[0].nodes[6].expandedTo[0].x, contours[0].nodes[6].expandedTo[0].y )
					serifTransform: serifRotate * ( -10 ) + 10
				3:
					noneOne: contours[0].nodes[6].expandedTo[0]
					noneTwo:contours[0].nodes[6].expandedTo[1]
					noneThree:contours[0].nodes[5].expandedTo[0]
					noneFour:contours[0].nodes[5].expandedTo[1]
			transformOrigin: Array( contours[0].nodes[6].expandedTo[1].x, contours[0].nodes[6].expandedTo[1].y )
			transforms: Array(
				[ 'skewX', serifRotate * ( -10 ) + 10 + 'deg' ]
			)
