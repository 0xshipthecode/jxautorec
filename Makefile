all: compile


BEAMFILES =	ebin/jxautorec.beam

ebin/%.beam: src/%.jxa
	joxa -p ebin -o ebin -c $<

compile: $(BEAMFILES)


