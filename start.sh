#!/bin/bash

export ERL_LIBS="deps"

erl -args_file env/devel.vmargs -config env/devel.config -pa ebin/ deps/*/ebin