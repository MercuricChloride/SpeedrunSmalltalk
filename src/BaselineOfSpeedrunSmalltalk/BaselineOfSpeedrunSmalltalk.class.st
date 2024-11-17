Class {
	#name : #BaselineOfSpeedrunSmalltalk,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpeedrunSmalltalk
}

{ #category : #baseline }
BaselineOfSpeedrunSmalltalk >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec postLoadDoIt: #loadLepiter.
			spec package: 'SpeedrunSmalltalk'.
		]
]

{ #category : #'as yet unclassified' }
BaselineOfSpeedrunSmalltalk >> loadLepiter [
	IceRepository registry
		detect: [ :aRepository | aRepository name = 'SpeedrunSmalltalk' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties
				addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [ self inform: 'Repository not found.' ]
]
