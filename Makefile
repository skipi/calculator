.PHONY: all ruby.junit elixir.junit js.junit

all: ruby.junit elixir.junit js.junit

ruby.junit:
	- cd ruby && \
		bundle exec rspec --format RspecJunitFormatter --out /tmp/test-results/junit.xml

elixir.junit:
	- cd elixir && \
		mix test

js.junit:
	- cd js && \
		npm test
