REMOTEUSER ?= clyde
HOST ?= monster.stat.duke.edu
DIR ?= /web/isds/docs/courses/Fall19/sta721
REMOTE ?= $(REMOTEUSER)@$(HOST):$(DIR)

.PHONY: clean
clean:
	rm -rf public/*

local:
	cp  config.toml-local  config.toml

404:
	cp .htaccess public/.htaccess

remote: 404
#	cp config.toml-remote config.toml

push: remote
	rsync -azv --delete  --exclude='.DS_Store'  public/ $(REMOTE)

unbind:
	lsof -wni tcp:4000

serve:
	hugo server --watch
