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
