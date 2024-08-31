current_directory := $(shell pwd)
explicit := gittemplate.symlink
allsymlinks := $(wildcard *.symlink)
symlinks := $(filter-out $(explicit),$(allsymlinks))

all: format-lua lint-lua

format-lua:
	docker run -it -v "$(current_directory):/data" johnnymorganz/stylua /stylua --config-path=/data/.stylua.toml --glob '**/*.lua' -- /data

lint-lua:
	docker run -v "$(current_directory):/data" ghcr.io/lunarmodules/luacheck .
