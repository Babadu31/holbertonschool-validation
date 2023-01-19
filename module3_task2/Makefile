build:
	hugo

clean:
	rm -rf dist/*

post:
	rm -rf content/post/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	sed -i 's/draft:.*/draft: false/' content/posts/$(POST_NAME).md

package:
	hugo
	zip -r awesome-website.zip dist/

lint: 
	markdownlint README.md DEPLOY.md

help:
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-0s:\033[0m %s\n",$$1, $$2}'