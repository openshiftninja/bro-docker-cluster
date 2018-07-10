include Makefile.inc

BRO_IMAGE       = bro_image
BUILD_BRO       = bro
CLUSTER_IMAGES  = cluster_bro_images
BUILD_CLUSTER   = cluster
RUN_MGR         = run_mgr
RUN_NODE        = run_node

all: build

build: $(BUILD_BRO) $(BUILD_CLUSTER)

clean:
		$(DOCKER) rmi -f bro/manager:$(BRO_VER)
			$(DOCKER) rmi -f bro/node:$(BRO_VER)
				$(DOCKER) rmi -f bro/bro:$(BRO_VER)

$(BUILD_BRO) : $(BRO_IMAGE)
		$(ECHO) building $(BRO_IMAGE)
			$(CD) $(BRO_IMAGE); $(MAKE) $(MFLAGS)

$(BUILD_CLUSTER) : $(CLUSTER_IMAGES)
		$(ECHO) building $(CLUSTER_IMAGES)
			$(CD) $(CLUSTER_IMAGES); $(MAKE) $(MFLAGS)

$(RUN_MGR) :
		$(CD) $(CLUSTER_IMAGES); $(MAKE) $(MFLAGS) $(RUN_MGR)

$(RUN_NODE) :
		$(CD) $(CLUSTER_IMAGES); $(MAKE) $(MFLAGS) $(RUN_NODE)
