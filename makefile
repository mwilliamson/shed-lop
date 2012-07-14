.PHONY: test 
	
build-tests:
	mkdir -p _build
	node_modules/.bin/shed-compile node_modules/shed-hat/hat.shed node_modules/shed-duck/duck.shed lib test --main=hat.run > _build/tests.js

test: build-tests
	node _build/tests.js lop.rulesTest.testCases
	node _build/tests.js lop.prattTest.testCases
