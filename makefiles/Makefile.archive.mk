# ---------- Archive support ----------
.PHONY: help_archive # Generate list of Archive targets with descriptions.
help_archive:
	@echo Use one of the following Archive targets:
ifeq ($(PLATFORM),WIN64)
	@$(GREP) "^.PHONY: .* #" $(CURDIR)/makefiles/Makefile.archive.mk | $(SED) "s/\.PHONY: \(.*\) # \(.*\)/\1\t\2/"
	@echo off & echo(
else
	@$(GREP) "^.PHONY: .* #" $(CURDIR)/makefiles/Makefile.archive.mk | $(SED) "s/\.PHONY: \(.*\) # \(.*\)/\1\t\2/" | expand -t20
	@echo
endif

# Main target
.PHONY: archive_data # Create OR-Tools archive for data examples.
archive_data: $(INSTALL_DATA_NAME)$(ARCHIVE_EXT)

############
##  DATA  ##
############
$(INSTALL_DATA_NAME)$(ARCHIVE_EXT):
	-$(DELREC) $(INSTALL_DATA_NAME)
	-$(MKDIR) $(INSTALL_DATA_NAME)
	-$(MKDIR) $(INSTALL_DATA_NAME)
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Set_jobshop
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Sflexible_jobshop
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Sjobshop
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Smultidim_knapsack
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Scvrptw
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Spdptw
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Sfill_a_pix
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Sminesweeper
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Srogo
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Ssurvo_puzzle
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Squasigroup_completion
	-$(MKDIR) $(INSTALL_DATA_NAME)$Sexamples$Sdata$Sdiscrete_tomography
#credits
	$(COPY) LICENSE $(INSTALL_DATA_NAME)
	$(TAR) -c -v \
--exclude *svn* \
--exclude *roadef* \
--exclude *vector_packing* \
--exclude *nsplib* \
examples$Sdata | $(TAR) -xvm -C $(INSTALL_DATA_NAME)
ifeq ($(PLATFORM),WIN64)
	$(ZIP) -r $(INSTALL_DATA_NAME)$(ARCHIVE_EXT) $(INSTALL_DATA_NAME)
else
	$(TAR) --no-same-owner -czvf $(INSTALL_DATA_NAME)$(ARCHIVE_EXT) $(INSTALL_DATA_NAME)
endif
#	-$(DELREC) $(INSTALL_DATA_NAME)

################
##  Cleaning  ##
################
.PHONY: clean_archive # Clean Archive output from previous build.
clean_archive:
	-$(DELREC) $(INSTALL_DATA_NAME)
	-$(DEL) $(INSTALL_DATA_NAME)$(ARCHIVE_EXT)

#############
##  DEBUG  ##
#############
.PHONY: detect_archive # Show variables used to build archive OR-Tools.
detect_archive:
	@echo Relevant info for the archive build:
	@echo INSTALL_DATA_NAME = $(INSTALL_DATA_NAME)
	@echo ARCHIVE_EXT = $(ARCHIVE_EXT)
ifeq ($(PLATFORM),WIN64)
	@echo off & echo(
else
	@echo
endif
