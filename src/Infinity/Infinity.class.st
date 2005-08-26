Class {
	#name : #Infinity,
	#superclass : #Object,
	#instVars : [
		'isNegative'
	],
	#classVars : [
		'PositiveInfinity',
		'NegativeInfinity'
	],
	#category : #Infinity
}

{ #category : #'class initialization' }
Infinity class >> initialize [
	"initializes the receiver"

	PositiveInfinity := self new 
						isNegative: false;
						yourself.

	NegativeInfinity := self new 
						isNegative: true;
						yourself 
]

{ #category : #accessing }
Infinity class >> negative [

	^NegativeInfinity
]

{ #category : #accessing }
Infinity class >> positive [

	^PositiveInfinity
]

{ #category : #testing }
Infinity >> isInfinite [
	"Returns true if the receiver represents an infinite value"
	
	^true
]

{ #category : #testing }
Infinity >> isNegative [
	"Returns true if the receiver is negative"

	^isNegative
]

{ #category : #accessing }
Infinity >> isNegative: aBoolean [
	"Sets the receiver to be positive or negative depending on the given boolean"

	isNegative := aBoolean
]

{ #category : #testing }
Infinity >> isPositive [
	"Returns true if the receiver is positive"

	^self isNegative not
]

{ #category : #printing }
Infinity >> printOn: aStream [
	"Prints the receiver on the given stream"

	aStream 
		nextPutAll: self class name;
		space.
	self isNegative 
			ifTrue: [aStream nextPutAll: 'negative']
			ifFalse: [aStream nextPutAll: 'positive']
]
