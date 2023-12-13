"
A Counter is a ""nice thing"".
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'currentValue',
		'otherValue',
		'test'
	],
	#category : #'Counter-Core',
	#'squeak_changestamp' : 'mad 9/8/2023 18:08'
}

{ #category : #'as yet unclassified' }
Counter class >> create [
	^ self new
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 12/13/2023 14:32'
}
Counter >> currentValue [
	^ currentValue ifNil: [currentValue := 42]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 9/26/2023 15:26'
}
Counter >> currentValue: anObject [
	currentValue := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 12/13/2023 14:31'
}
Counter >> increment [
	self halt. "for debug"
	currentValue := currentValue + 1.
	Transcript showln: 'incremented!'.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 12/13/2023 14:38'
}
Counter >> reset [
	"initial common line"
	currentValue := 1.
	"more common lines"
	self inform: 'problems!'.
	"one last common line"
]
