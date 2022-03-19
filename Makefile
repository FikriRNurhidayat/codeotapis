generate:
	rm -rf ./proto
	docker run -v ${PWD}:/src -w /src --rm bufbuild/buf generate

lint:
	docker run -v ${PWD}:/src -w /src --rm bufbuild/buf lint
