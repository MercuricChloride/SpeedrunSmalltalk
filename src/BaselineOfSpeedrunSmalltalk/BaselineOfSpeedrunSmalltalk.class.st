Class {
	#name : #BaselineOfSpeedrunSmalltalk,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpeedrunSmalltalk
}

{ #category : #baseline }
BaselineOfSpeedrunSmalltalk >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'SpeedrunSmalltalk'.
		]
]
