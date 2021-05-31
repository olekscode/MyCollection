Class {
	#name : #MyCollection,
	#superclass : #Collection,
	#instVars : [
		'contents'
	],
	#category : #MyCollection
}

{ #category : #adding }
MyCollection >> add: newObject [ 
	"Include newObject as one of the receiver's elements. Answer newObject. 
	ArrayedCollections cannot respond to this message."

	contents add: newObject 
]

{ #category : #enumerating }
MyCollection >> do: aBlock [ 
	"Evaluate aBlock with each of the receiver's elements as the argument."

	contents do: aBlock
]

{ #category : #initialization }
MyCollection >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #removing }
MyCollection >> remove: oldObject ifAbsent: anExceptionBlock [ 
	"Remove oldObject from the receiver's elements. If several of the 
	elements are equal to oldObject, only one is removed. If no element is 
	equal to oldObject, answer the result of evaluating anExceptionBlock. 
	Otherwise, answer the argument, oldObject. ArrayedCollections cannot 
	respond to this message."

	contents remove: oldObject ifAbsent: anExceptionBlock 
]
