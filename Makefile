all: compile escript


BEAMFILES =	ebin/jxautorec.beam

ebin/%.beam: src/%.jxa
	joxa -p ebin -o ebin -c $<

escript: src/make_escript.jxa
	joxa -p ebin < src/make_escript.jxa
	chmod +x jxautorec

compile: $(BEAMFILES)


