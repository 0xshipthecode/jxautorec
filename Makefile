all: compile escript


BEAMFILES =	ebin/jxautorec.beam

ebin/%.beam: src/%.jxa
	joxa -p ebin -o ebin -c $<

escript: src/make_escript.jxa
	joxa -p /Users/martin/Projects/joxa/ebin -p ebin < src/make_escript.jxa
	chmod +x jxautorec

compile: $(BEAMFILES)

clean:
	rm ebin/*
	rm jxautorec

