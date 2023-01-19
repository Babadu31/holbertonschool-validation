help: ## Show help command
	@sed -ne '/@sed/!s/## //p' Makefile

build:  ## Create Website
	@hugo

clean:  ## Delete content of dist folder
	@rm -rf dist/*

post:  ## Create a post
	@hugo new ./content/posts/$(POST_NAME).md
	@sed -i '/title:*/c\title: "$(POST_TITLE)"' ./content/posts/$(POST_NAME).md

package: ## zip website
	@hugo
	@zip awesome-website.zip ./dist

lint: ## setup check
	markdownlint README.md
	markdownlint DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || "Lint Failed"

markdownlint: ## update lint
	markdownlint README.md
	markdownlint DEPLOY.md

unit-tests: ## test file
	@ls

integration-tests: ## integrate file
	@ls

validate: ## valide file
	@ls