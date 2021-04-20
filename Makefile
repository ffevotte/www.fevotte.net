all: cv assets/font-awesome
	bundle config set path "vendor/bundle"
	bundle install
	bundle exec jekyll build

serve:
	@ echo "http://localhost:8765"
	@ cd _site && python2 -m SimpleHTTPServer 8765

.PHONY: cv
cv:
	make -C _cv

assets/font-awesome:
	unzip -d assets font-awesome-4.7.0.zip
	mv assets/font-awesome-4.7.0 $@
