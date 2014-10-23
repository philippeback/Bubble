bubble-version
bubbleApp: aFileReference

	VTermOutputDriver stdout << ('Floating {1}' format: { aFileReference basename }); lf
