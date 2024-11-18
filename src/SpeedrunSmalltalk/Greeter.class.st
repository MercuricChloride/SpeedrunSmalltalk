Class {
	#name : #Greeter,
	#superclass : #Object,
	#category : #'SpeedrunSmalltalk-Prebuilt'
}

{ #category : #example }
Greeter >> exampleGreet [
	<gtExample>
	|aName|
	aName := 'Alan Kay'.
	^ 'Hello, ' , aName
]

{ #category : #view }
Greeter >> gtExampleViewFor: aView [
	"View pragma commented out so it doesn't show up as a view."
	"<gtView>"
	^ aView columnedList
		title: 'List View';
		items: {
			{'Normal'. self greet}.
			{'Formal'. self greetFormal}};
		column: 'Kind' text: #first;
		column: 'Value' text: #second.
]
