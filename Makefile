export PATH := $(PATH):~/projects/www/bibtex2html-1.98-linux/

build: deps
	bundle config set path "vendor/bundle"
	bundle install
	bundle exec jekyll build

serve: deps
	bundle exec jekyll serve

deps: cv assets/font-awesome

.PHONY: cv
cv:
	make -C _cv

assets/font-awesome:
	unzip -d assets font-awesome-4.7.0.zip
	mv assets/font-awesome-4.7.0 $@
