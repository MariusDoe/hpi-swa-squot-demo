Class {
	#name : #CounterTool,
	#superclass : #Model,
	#instVars : [
		'counter'
	],
	#category : 'Counter-Core'
}

{ #category : #actions }
CounterTool >> actionIncrement [

	self counter increment.
	self changed: #counterValueString.
]

{ #category : #actions }
CounterTool >> actionReset [

	self counter reset.
	self changed: #counterValueString.
]

{ #category : #toolbuilder }
CounterTool >> buildButtonBarSpecWith: aBuilder [

	^ aBuilder pluggablePanelSpec new
			layout: #horizontal;
			frame: (0@0.5 corner: 1@1);
			children: {
				aBuilder pluggableActionButtonSpec new
					model: self;
					label: 'Increment';
					action: #actionIncrement;
					yourself.
				aBuilder pluggableActionButtonSpec new
					model: self;
					label: 'Reset';
					action: #actionReset;
					yourself.
			}
]

{ #category : #toolbuilder }
CounterTool >> buildValueLabelSpecWith: aBuilder [

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #counterValueString;
			readOnly: true;
			frame: (0@0 corner: 1@0.5);
			yourself
]

{ #category : #toolbuilder }
CounterTool >> buildWith: aBuilder [

	| window |
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: #counterValueString;
		extent: 200@100;
		children: {
			self buildValueLabelSpecWith: aBuilder.
			self buildButtonBarSpecWith: aBuilder}
		yourself.
		
	^ aBuilder build: window
]

{ #category : #accessing }
CounterTool >> counter [
	^ counter
]

{ #category : #accessing }
CounterTool >> counter: anObject [

	counter := anObject.
]

{ #category : #accessing }
CounterTool >> counterValueString [
	
	^ self counter currentValue asString
]

{ #category : #'initialize-release' }
CounterTool >> initialize [

	super initialize.
	counter := Counter new.
]
