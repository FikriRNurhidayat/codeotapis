MAKEFLAGS += --silent

mod:
	go mod tidy
	go mod vendor

generate: format
	rm -rf ./proto
	rm -rf ./docs
	buf generate

format:
	buf format -w

lint:
	buf lint
