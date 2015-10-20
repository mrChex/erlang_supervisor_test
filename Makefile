REBAR?=./rebar


all: build

clean:
	$(REBAR) clean

depends:
	@export GPROC_DIST=true
	@if test ! -d ./deps/proper; then \
		$(REBAR) get-deps; \
	fi


build: depends
	$(REBAR) compile

start: build
	./start.sh


.PHONY: clean depends build start
