Class {
	#name : #DVDLogo,
	#superclass : #ImageMorph,
	#instVars : [
		'velocity'
	],
	#category : #'DVD-Logo'
}

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'mad 11/4/2023 10:23'
}
DVDLogo >> checkCollisions [
	self right > self container right ifTrue: [
		self right: self container right.
		self velocity: self velocity * (-1 @ 1)].
	self left < self container left ifTrue: [
		self left: self container left.
		self velocity: self velocity * (-1 @ 1)].
	self bottom > self container bottom ifTrue: [
		self bottom: self container bottom.
		self velocity: self velocity * (1 @ -1)].
	self top < self container top ifTrue: [
		self top: self container top.
		self velocity: self velocity * (1 @ -1)].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 11/4/2023 10:24'
}
DVDLogo >> container [
	^ self owner
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'mad 11/4/2023 10:28'
}
DVDLogo >> initialize [
	super initialize.
	self velocity: 20@21.
	self image: ((GitAssetLoader forProject: 'Demo') loadForm: 'DVD_logo.png').
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'mad 11/4/2023 10:19'
}
DVDLogo >> step [
	self position: self position + self velocity.
	self checkCollisions.
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'mad 11/4/2023 10:24'
}
DVDLogo >> stepTime [
	^ 10
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 11/4/2023 10:23'
}
DVDLogo >> velocity [
	^ velocity
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'mad 11/4/2023 10:23'
}
DVDLogo >> velocity: aPoint [
	velocity := aPoint
]
