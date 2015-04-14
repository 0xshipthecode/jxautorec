
# check whether JOXA_HOME is defined
ifndef JOXA_HOME
    $(error Please point JOXA_HOME to your joxa directory.)
endif

.PHONY: check-joxa-dir


all: compile jxautorec


BEAMFILES= \
	ebin/jxautorec.beam \
	ebin/jxar-make-escript.beam


ebin/%.beam: src/%.jxa
	$(JOXA_HOME)/joxa -p ebin -o ebin -c $<


jxautorec: $(BEAMFILES)
	erl -pa $(JOXA_HOME)/ebin ebin -s 'jxar-make-escript' -s erlang halt
	chmod +x jxautorec


compile: $(BEAMFILES)


clean:
	rm ebin/*
	rm jxautorec

