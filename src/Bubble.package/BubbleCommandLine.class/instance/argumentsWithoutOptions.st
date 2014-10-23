activation
argumentsWithoutOptions
	^ self arguments reject: [ :each | #('--version' '--app' '--test') includes: each ]