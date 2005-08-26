Class {
	#name : #Infinity,
	#superclass : #Object,
	#instVars : [
		'floatRepresentation'
	],
	#classVars : [
		'PositiveRepresentation',
		'PositiveInfinity',
		'NegativeInfinity',
		'NegativeRepresentation'
	],
	#category : #Infinity
}

{ #category : #'class initialization' }
Infinity class >> initialize [
	"initializes the receiver"

	PositiveRepresentation := Float maxVal * Float maxVal.
	NegativeRepresentation := (1 - PositiveRepresentation).
	
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

{ #category : #arithmetic }
Infinity >> * anObject [
	anObject isInfinite ifTrue: [self halt].
	^anObject * self
]

{ #category : #arithmetic }
Infinity >> + anObject [
	anObject isInfinite ifTrue: [self halt.].
	^anObject + self
]

{ #category : #adapting }
Infinity >> adaptToNumber: rcvr andSend: selector [
	|result|	
	result := rcvr perform: selector with: floatRepresentation.
	result = PositiveRepresentation ifTrue: [^self class positive].	
	result = NegativeRepresentation ifTrue: [^self class negative].
	^result


]

{ #category : #testing }
Infinity >> isInfinite [
	"Returns true if the receiver represents an infinite value"
	
	^true
]

{ #category : #testing }
Infinity >> isNegative [
	"Returns true if the receiver is negative"

	^floatRepresentation < 0
]

{ #category : #accessing }
Infinity >> isNegative: aBoolean [
	"Sets the receiver to be positive or negative depending on the given boolean"

	aBoolean 
		ifTrue: [floatRepresentation := NegativeRepresentation]
		ifFalse: [floatRepresentation := PositiveRepresentation]
]

{ #category : #testing }
Infinity >> isPositive [
	"Returns true if the receiver is positive"

	^floatRepresentation > 0
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
