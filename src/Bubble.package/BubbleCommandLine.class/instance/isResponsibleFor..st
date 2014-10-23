activation
isResponsibleFor: aCommandLine
	"This handler is reponsible only for .st files"
	(aCommandLine hasFileWithExtension: '.bubble')
		ifTrue: [ ^ true ].
	^ super isResponsibleFor: aCommandLine