build:
	@hugo

clean:
	@rm -rf dist

post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: ".*"/title: "$(POST_TITLE)"/g' content/posts/$(POST_NAME).md