all: assets/font-awesome
	bundle install --path vendor/bundle
	bundle exec jekyll build

assets/font-awesome:
	unzip -d assets font-awesome-4.7.0.zip
	mv assets/font-awesome-4.7.0 $@
