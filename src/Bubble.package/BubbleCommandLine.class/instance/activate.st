activation
activate
	self activateHelp
		ifTrue: [ ^ self ].
	(self hasOption: 'version')
		ifTrue: [ 
			self bubbleVersion.
			^ self exitSuccess ].
	(self hasOption: 'app')
		ifTrue: [ 
			self bubbleApp.
			^ self exitSuccess ].
	self printHelp.
	^ self exitFailure