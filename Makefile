.PHONY: all ruby.junit elixir.junit js.junit


all: ruby.junit elixir.junit js.junit

ruby.junit:
	- cd ruby && \
		bundle exec rspec --format RspecJunitFormatter --out ../test-results/rspec.xml

elixir.junit:
	- cd elixir && \
		mix test

js.junit:
	- cd js && \
		npm test
