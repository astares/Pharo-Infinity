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
InfinityTestCase >> testPositiveAccessing [

	self assert: Infinity positive class = Infinity

]

{ #category : #testing }
InfinityTestCase >> testPositiveIsInfinite [

	self assert: Infinity positive isInfinite	
]
