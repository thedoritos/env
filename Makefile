.PHONY: install # Apply configs to mac
install:
	@bash scripts/install

.PHONY: install-all # Apply configs to mac including brews
install-all:
	@bash scripts/install -b

.PHONY: dump # Copy configs from mac
dump:
	@bash scripts/dump

.PHONY: dump-all # Copy configs from mac including brews
dump-all:
	@bash scripts/dump -b

.PHONY: help # Print usage (this)
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1	# \2/' | expand -t16
