#A makefile to build bubble

pharo/Bubble.image:
	mkdir pharo
	cd pharo; wget -O- get.pharo.org/30+vm | bash
	pharo/pharo pharo/Pharo.image --no-default-preferences eval --save Gofer it url: \'filetree://../src\'\; package: \'Bubble\'\; load

centospharo/Bubble.image:
	mkdir pharo
	cd pharo; wget -O- get.pharo.org/30 | bash
	cd pharo; tar xvfz ../centospharovm.tgz
	pharo/pharo pharo/Pharo.image save Bubble --delete-old
	pharo/pharo pharo/Bubble.image --no-default-preferences eval --save Gofer it url: \'filetree://../src\'\; package: \'Bubble\'\; load

all: pharo/Bubble.image

centos: centospharo/Bubble.image

clean:
	rm -rf pharo

