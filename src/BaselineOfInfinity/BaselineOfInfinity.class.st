"
Baseline for https://github.com/astares/Pharo-Infinity
"
Class {
	#name : #BaselineOfInfinity,
	#superclass : #BaselineOf,
	#category : #BaselineOfInfinity
}

{ #category : #baseline }
BaselineOfInfinity >> baseline: spec [
	<baseline>
	spec
		for: #common do: [
			"Packages"
			spec 
				package: 'Infinity-Core';
				package: 'Infinity-Core-Tests' with: [ spec requires: #('Infinity-Core') ].
			
			"Groups"	
			spec	
				group: 'Core' with: #('Infinity-Core');
				group: 'Tests' with: #('Infinity-Core-Tests');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('Core' 'Tests') ]
]
