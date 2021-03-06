SHELL = /bin/bash
.SUFFIXES:

IN_SANDBOX = cabal exec -- 

%.o: %.hs
	$(IN_SANDBOX) ghc $<

all: WebServer VhdlParser

WebServer: WebServer.hs .cabal-sandbox
	$(IN_SANDBOX) ghc --make $<

VhdlParser: VhdlEntityTree.hs VhdlParser.hs Tokens.hs .cabal-sandbox
	$(IN_SANDBOX) ghc --make VhdlParser.hs

Tokens.hs: Tokens.x .cabal-sandbox
	$(IN_SANDBOX) alex Tokens.x

.cabal-sandbox: cabal.config
	cabal sandbox init
	cabal install scotty
	cabal install alex
	cabal install json

.PHONY: run
run: VhdlParser
	./VhdlParser --path=./example-hdl/I2C/ --topLevel=I2C_topEntity_0

.PHONY: clean
clean:
	rm -f *.o
	rm -f *.hi
	rm -f WebServer
	rm -f VhdlParser
	rm -f Tokens.hs

.PHONY: depclean
depclean:
	rm -rf .cabal-sandbox
	rm -f cabal.sandbox.config
	make clean
