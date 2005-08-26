Class {
	#name : #InfinityTestCase,
	#superclass : #TestCase,
	#category : #'Infinity-Tests'
}

{ #category : #testing }
InfinityTestCase >> testNegativeAccessing [

	self assert: Infinity negative class = Infinity

]

{ #category : #testing }
InfinityTestCase >> testNegativeIsInfinite [

	self assert: Infinity negative isInfinite	
]

{ #category : #testing }
InfinityTestCase >> testNegativePrintOn [

	|stream|
	stream := String new writeStream.
	Infinity negative printOn: stream.
	self assert: stream contents = 'Infinity negative'

	
]

{ #category : #testing }
InfinityTestCase >> testPositiveAccessing [

	self assert: Infinity positive class = Infinity

]

{ #category : #testing }
InfinityTestCase >> testPositiveIsInfinite [

	self assert: Infinity positive isInfinite	
]

{ #category : #testing }
InfinityTestCase >> testPositivePrintOn [

	|stream|
	stream := String new writeStream.
	Infinity positive printOn: stream.
	self assert: stream contents = 'Infinity positive'

	
]
