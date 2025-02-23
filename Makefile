install:
	npm install -g resume-cli
	npm install jsonresume-theme-even jsonresume-theme-eddywashere
	pip install pipenv
update-gist:
	curl -X PATCH -H "Authorization: token $(GITHUB_TOKEN)" \
	-d '{"files": {"resume.json": {"content": "'"$(cat resume.json)"'"}}}' \
	https://api.github.com/gists/91db4ee7d322c69ed3131fd586ae03b2
serve: 
	resume serve