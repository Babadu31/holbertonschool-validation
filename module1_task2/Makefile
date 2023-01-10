build:	 ## blabla
	@hugo	

clean:	 ## blabla
	@rm -rf dist

post:	 ## blabla
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: ".*"/title: "$(POST_TITLE)"/g' content/posts/$(POST_NAME).md

help:  ## blabla
	@make build --help