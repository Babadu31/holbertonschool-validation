.PHONY:

build:
	@hugo --source=. --destination=./dist

clean:
	rm -rf dist

post:
	hugo new posts/$(POST_NAME).md
	echo 'title: "$(POST_TITLE)"' >> content/posts/$(POST_NAME).md