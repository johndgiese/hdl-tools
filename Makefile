SHELL = /bin/bash
.SUFFIXES:

IN_SANDBOX = cabal exec -- 

Main: Main.hs .cabal-sandbox
	$(IN_SANDBOX) ghc --make Main.hs

.cabal-sandbox: cabal.config
	cabal sandbox init
	cabal install scotty

.PHONY: clean
clean:
	rm *.o
	rm *.hi
	rm -f Main

.PHONY: depclean
depclean:
	rm -rf .cabal-sandbox
	rm -f cabal.sandbox.config
	make clean
