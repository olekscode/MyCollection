Class {
	#name : #MyCollectionTest,
	#superclass : #TestCase,
	#category : #'MyCollection-Tests'
}

{ #category : #tests }
MyCollectionTest >> testAdd [
	| collection |
	collection := MyCollection new.
	
	collection add: #hello.
	
	self assert: collection size equals: 1.
	
]

{ #category : #tests }
MyCollectionTest >> testCreateEmptyStack [
	| collection |
	collection := MyCollection new.
]

{ #category : #tests }
MyCollectionTest >> testIsEmpty [
	| collection |
	collection := MyCollection new.
	
	self assert: collection isEmpty.
	
]

{ #category : #tests }
MyCollectionTest >> testRemove [
	| collection |
	collection := MyCollection new.
	
	collection add: #hello.
	collection remove: #hello.
	
	self assert: collection isEmpty.
	
]

{ #category : #tests }
MyCollectionTest >> testSizeOfEmptyStackIsZero [
	| collection |
	collection := MyCollection new.
	
	self assert: collection size equals: 0
	
]
