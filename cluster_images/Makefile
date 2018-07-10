include ../Makefile.inc

BUILD_MANAGER = build_manager
BUILD_NODE    = build_node
NODE          = node
MANAGER       = manager
RUN_MGR       = run_mgr
RUN_NODE      = run_node

all: build

build: $(BUILD_NODE) $(BUILD_MANAGER) 

$(BUILD_NODE) : $(NODE)
		$(ECHO) building $(NODE)
			$(CD) $(NODE); $(MAKE) $(MFLAGS)

$(BUILD_MANAGER) : $(MANAGER)
		$(ECHO) building $(MANAGER)
			$(CD) $(MANAGER); $(MAKE) $(MFLAGS)

$(RUN_MGR) :
		$(DOCKER) run -it --net=host bro/manager

$(RUN_NODE) :
		$(DOCKER) run -it --net=host bro/node
