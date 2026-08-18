ifeq ($(V),1)
 Q =
 else
 Q = @
 endif
.PHONY: all

all: deploy files modules

	@echo "Done."

all:
.PHONY: deploy

deploy:
	@echo "Installing b..."
	$(Q)mkdir -p b
	$(Q)mkdir -p b/store
	$(Q)mkdir -p b/store/games
	$(Q)mkdir -p b/hard-en/psp
	$(Q)mkdir -p b/sys
	$(Q)mkdir -p b/sys/A3_modules
	$(Q)mkdir -p b/sys/net
files:
	@echo "Flashing files..."
	$(Q)cp store/licenses.json b/store/licenses.json
	$(Q)cp psp/exh.txt b/hard-en/psp/exh.txt
	$(Q)cp firmware.txt b/sys/firmware.txt
	$(Q)cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	$(Q)cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 b/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	
modules:
	@echo "Loading modules..."
	$(Q)cp net_environment/port.txt b/sys/net/port.txt
.PHONY: clean

clean:
	$(Q)rm -rf b
	@echo "Ok, i removed everything here."

.PHONY: server

server:
	powershell.exe /c .\\port.bat
	@echo "i'm now connecting you to Arancia 3's Server".
	nc -lk -p 30003