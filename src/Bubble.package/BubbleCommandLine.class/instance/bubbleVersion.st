actions
bubbleVersion
	[ BubbleDriver new bubbleVersion ]
		on: Exception
		do: [ :ex | self exitFailure: 'Bubble-BubbleDriver: ' , ex description ]