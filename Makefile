.PHONY: format
format:
	forge fmt

.PHONY: start_local_node
start_local_node:
	anvil

.PHONY: format_check
format_check:
	forge fmt --check

.PHONY: test
test:
	forge test --gas-report

.PHONY: test_watch
test_watch:
	forge test --gas-report --watch

.PHONY: test_debug
test_debug:
	forge test --gas-report -vvvvv --watch

.PHONY: examine_storage_BitwiseOperations
examine_storage_BitwiseOperations:
	sol2uml storage -c BitwiseOperations src

.PHONY: examine_class
examine_class:
	sol2uml src

.PHONY: open_class
open_class:
	open -a Google\ Chrome ./classDiagram.svg

.PHONY: open_storage_BitwiseOperations
open_storage_BitwiseOperations:
	open -a Google\ Chrome ./BitwiseOperations.svg

.PHONY: examine_storage
examine_storage: examine_storage_BitwiseOperations

.PHONY: before_commit
before_commit: format test examine_storage examine_class
