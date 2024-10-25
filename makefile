SAVE_PATH_SCRIPT_PATH 		:= ./build_scripts/save_path.bash
LIMIT_PATH_SCRIPT_PATH 		:= ./build_scripts/limit_path.bash
MAKER_SCRIPT_PATH 		:= ./build_scripts/maker.bash
RESTORE_PATH_SCRIPT_PATH 	:= ./build_scripts/restore_path.bash
TESTER_SCRIPT_PATH 		:= ./build_scripts/tester.bash

SAVE_PATH_SCRIPT_CMD 		:= $(SAVE_PATH_SCRIPT_PATH)
LIMIT_PATH_SCRIPT_CMD 		:= $(LIMIT_PATH_SCRIPT_PATH)
MAKER_CMD 			:= $(MAKER_SCRIPT_PATH)
RESTORE_PATH_SCRIPT_CMD 	:= $(RESTORE_PATH_SCRIPT_PATH)
TESTER_SCRIPT_CMD 		:= $(TESTER_SCRIPT_PATH)

GO_EXEC_TXT_PATH 		:= ./build_scripts/golang_binary_path.txt

default: test

test: $(GO_EXEC_TXT_PATH) $(SAVE_PATH_SCRIPT_PATH) $(LIMIT_PATH_SCRIPT_PATH) $(RESTORE_PATH_SCRIPT_PATH)
	@$(TESTER_SCRIPT_PATH)
$(TESTER_SCRIPT_PATH): $(TESTER_SCRIPT_PATH)
	@echo "makefile ::> Running command [$(SAVE_PATH_SCRIPT_CMD)]..."
	@$(SAVE_PATH_SCRIPT_CMD)
	@echo "makefile ::> Running command [$(LIMIT_PATH_SCRIPT_CMD)]..."
	@$(LIMIT_PATH_SCRIPT_CMD)
	@echo "makefile ::> Running command [$(TESTER_SCRIPT_CMD)]..."
	@$(TESTER_SCRIPT_CMD)
	@echo "makefile ::> Running command [$(RESTORE_PATH_SCRIPT_CMD)]..."
	@$(RESTORE_PATH_SCRIPT_CMD)

build: $(GO_EXEC_TXT_PATH) $(SAVE_PATH_SCRIPT_PATH) $(LIMIT_PATH_SCRIPT_PATH) $(RESTORE_PATH_SCRIPT_PATH)
	@$(MAKER_SCRIPT_PATH)
$(MAKER_SCRIPT_PATH): $(MAKER_SCRIPT_PATH)
	@echo "makefile ::> Running command [$(SAVE_PATH_SCRIPT_CMD)]..."
	@$(SAVE_PATH_SCRIPT_CMD)
	@echo "makefile ::> Running command [$(LIMIT_PATH_SCRIPT_CMD)]..."
	@$(LIMIT_PATH_SCRIPT_CMD)
	@echo "makefile ::> Running command [$(MAKER_CMD)]..."
	@$(MAKER_CMD)
	@echo "makefile ::> Running command [$(RESTORE_PATH_SCRIPT_CMD)]..."
	@$(RESTORE_PATH_SCRIPT_CMD)


