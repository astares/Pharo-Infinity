Class {
	#name : #InfinityTestCase,
	#superclass : #TestCase,
	#category : #'Infinity-Core-Tests'
}

{ #category : #'testing negative' }
InfinityTestCase >> testNegativeAccessing [

	self assert: Infinity negative class = Infinity

]

{ #category : #'testing negative arithmetic' }
InfinityTestCase >> testNegativeAdd [

	self assert: 1 + Infinity negative = Infinity negative
]

{ #category : #'testing negative arithmetic' }
InfinityTestCase >> testNegativeAddAsReceiver [

	self assert: Infinity negative + 1 = Infinity negative
]

{ #category : #'testing negative' }
InfinityTestCase >> testNegativeIsInfinite [

	self assert: Infinity negative isInfinite	
]

{ #category : #'testing negative arithmetic' }
InfinityTestCase >> testNegativeMultiply [

	self assert: 1 * Infinity negative = Infinity negative
]

{ #category : #'testing negative arithmetic' }
InfinityTestCase >> testNegativeMultiplyAsReceiver [

	self assert: Infinity negative * 1 = Infinity negative
]

{ #category : #'testing negative' }
InfinityTestCase >> testNegativePrintOn [

	|stream|
	stream := String new writeStream.
	Infinity negative printOn: stream.
	self assert: stream contents = 'Infinity negative'

	
]

{ #category : #'testing positive' }
InfinityTestCase >> testPositiveAccessing [

	self assert: Infinity positive class = Infinity

]

{ #category : #'testing positive arithmetic' }
InfinityTestCase >> testPositiveAdd [

	self assert: 1 + Infinity positive = Infinity positive
]

{ #category : #'testing positive arithmetic' }
InfinityTestCase >> testPositiveAddAsReceiver [

	self assert: Infinity positive + 1 = Infinity positive
]

{ #category : #'testing positive' }
InfinityTestCase >> testPositiveIsInfinite [

	self assert: Infinity positive isInfinite	
]

{ #category : #'testing positive arithmetic' }
InfinityTestCase >> testPositiveMultiply [

	self assert: 1 * Infinity positive = Infinity positive
]

{ #category : #'testing positive arithmetic' }
InfinityTestCase >> testPositiveMultiplyAsReceiver [

	self assert: Infinity positive * 1 = Infinity positive
]

{ #category : #'testing positive' }
InfinityTestCase >> testPositivePrintOn [

	|stream|
	stream := String new writeStream.
	Infinity positive printOn: stream.
	self assert: stream contents = 'Infinity positive'

	
]
