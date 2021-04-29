.PHONY: build test hh_autoload format

build:
	docker build -t mwildehahn/graphpinator-parser .

install: build
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-parser composer install

hh_autoload:
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-parser ./vendor/bin/hh-autoload

test: hh_autoload
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-parser ./vendor/bin/hacktest tests

format:
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-parser find {src,tests} -type f -exec hackfmt -i {} \;