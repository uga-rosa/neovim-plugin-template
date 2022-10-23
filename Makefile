.PHONY: test
test: luacheck vusted

.PHONY: luacheck
luacheck:
	luacheck ./lua

.PHONY: vusted
vusted:
	vusted ./lua
