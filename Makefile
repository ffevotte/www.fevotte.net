all: cv assets/font-awesome
	bundle install --path vendor/bundle
	bundle exec jekyll build

.PHONY: cv
cv:
	make -C _cv

assets/font-awesome:
	unzip -d assets font-awesome-4.7.0.zip
	mv assets/font-awesome-4.7.0 $@
