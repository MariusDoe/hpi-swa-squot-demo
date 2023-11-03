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
	#'squeak_changestamp' : 'mad 9/26/2023 15:27'
}
Counter >> currentValue [
	^ currentValue ifNil: [currentValue := 5]
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
	#'squeak_changestamp' : 'mad 11/3/2023 15:24'
}
Counter >> increment [
	self halt. "for debug"
	currentValue := currentValue + 5.
	Transcript showln: 'some other notificiation!'.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 11/3/2023 15:24'
}
Counter >> reset [
	"initial common line"
	"more common lines"
	self inform: 'problems...'.
	"one last common line"
]
