#!/bin/bash

export ERL_LIBS="deps"

erl -args_file env/devel.vmargs -pa ebin/ deps/*/ebin -s suptest_app $1