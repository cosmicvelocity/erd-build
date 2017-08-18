dot_installed := $(shell cabal list --installed graphviz)

all: dist/erd

dist/erd: erd-master

ifeq "$(dot_installed)" "No matches found."
	cabal update
	cabal install graphviz
endif

	cd erd-master; \
	cabal configure; \
	cabal build --ghc-options='-optl-static -optl-pthread'

	mkdir -p dist
	cp erd-master/dist/build/erd/erd dist/

erd-master: erd.zip
	unzip erd.zip

erd.zip:
	wget https://github.com/BurntSushi/erd/archive/master.zip -O erd.zip

clean:
	@if [ -d erd-master ]; \
	    then \
		cd erd-master; cabal clean; \
		cd ..; $(RM) -rf erd-master; \
	fi

	$(RM) -r erd.zip
