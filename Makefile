ifeq ($(V),1)
 Q =
 else
 Q = @
 endif
.PHONY: all

all: deploy files modules
	@echo "Compact A3N Now in use."
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
	$(Q)mkdir -p b/home
	$(Q)mkdir -p b/home/user
	$(Q)mkdir -p b/home/user/configs
	$(Q)mkdir -p b/home/user/configs/eltra
	$(Q)mkdir -p b/home/user/stubmodules
	$(Q)mkdir -p b/home/user/cel
files:
	@echo "Flashing files..."
	$(Q)cp store/licenses.json b/store/licenses.json
	$(Q)cp psp/exh.txt b/hard-en/psp/exh.txt
	$(Q)cp firmware.txt b/sys/firmware.txt
	$(Q)cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	$(Q)cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 b/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	$(Q)cp store/games/Incredibox-Smart_Hub.sb3 b/store/games/Incredibox-Smart_Hub.sb3
	
modules:
	@echo "Loading modules..."
	$(Q)cp net_environment/port.txt b/sys/net/port.txt
	$(Q)cp sk-gcc/devices.A3 b/sys/A3_modules/supported_devices.txt
	$(Q)cp sk-gcc/ehshell.txt b/home/user/configs/eltra/ehshell.txt
	$(Q)cp ipynb_stubmodules/bshell_stubmodule.A3 b/home/user/stubmodules/bshell_stub.A3
	$(Q)cp cel/celnum.txt b/home/user/cel/celnum.txt
.PHONY: clean

clean:
	$(Q)rm -rf b
	$(Q)rm -rf CA3N.zip
	@echo "Ok, i removed everything here."

.PHONY: server

server:
	powershell.exe /c .\\port.bat
	@echo "i'm now connecting you to Arancia 3's Server".
	nc -lk -p 30003
.PHONY: comp

comp:
	@echo "Compressing.."
	zip -r CA3N.zip b