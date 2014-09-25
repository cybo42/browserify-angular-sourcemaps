PACKAGE = asyncjs
NODEJS = $(if $(shell test -f /usr/bin/nodejs && echo "true"),nodejs,node)
CWD := $(shell pwd)
NODEUNIT = $(CWD)/node_modules/nodeunit/bin/nodeunit
UGLIFY = $(CWD)/node_modules/uglify-js/bin/uglifyjs
NODELINT = $(CWD)/node_modules/nodelint/nodelint

BROWSERIFY = $(CWD)/node_modules/.bin/browserify

BUILDDIR = dist

all: clean test build

build: $(wildcard  lib/*.js)
	# mkdir -p $(BUILDDIR)
	# $(UGLIFY) lib/async.js > $(BUILDDIR)/async.min.js

test:
	$(NODEUNIT) test

clean:
	echo "cleaning $(BUILDDIR)"

lint:
	$(NODELINT) --config nodelint.cfg lib/async.js

.PHONY: test build all