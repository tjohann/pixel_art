# only for cleaning

MODULES = $(shell ls -d */ | cut -f1 -d'/')

all:
	for dir in $(MODULES); do (cd $$dir && $(MAKE)); done

clean:
	rm -f *~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done

distclean: clean

.PHONY: clean all
