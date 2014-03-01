JOXA_DIR=$(HOME)/Packages/joxa

all: compile escript

BEAMFILES =ebin/jxautorec.beam \
	ebin/jxar-make-escript.beam

ebin/%.beam: src/%.jxa
	joxa -p ebin -o ebin -c $<

escript: compile
	erl -pa $(JOXA_DIR)/ebin ebin -s 'jxar-make-escript' -s erlang halt
	chmod +x jxautorec

compile: $(BEAMFILES)

clean:
	rm ebin/*
	rm jxautorec

