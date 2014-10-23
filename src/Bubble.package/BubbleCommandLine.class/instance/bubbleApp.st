actions
bubbleApp
	| args |
	args := self argumentsAsFileReferences.
	[ BubbleDriver new bubbleApp: args first ]
		on: Exception
		do: [ :ex | self exitFailure: 'Bubble-BubbleDriver: ' , ex description ]