ifeq ($(V),1)
 Q =
 else
 Q = @
 endif

.PHONY: all deploy files modules clean server comp mov

all: deploy files modules
	@echo "Compact A3N Now in use."

deploy:
	@echo "Logical blash Rendering..."
	$(Q)mkdir -p b
	$(Q)mkdir -p b/store
	$(Q)mkdir -p b/store/games
	$(Q)mkdir -p b/hard-en/psp
	$(Q)mkdir -p b/sys
	$(Q)mkdir -p b/sys/A3_modules
	$(Q)mkdir -p b/sys/net
	$(Q)mkdir -p b/sys/net/statistics
	$(Q)mkdir -p b/home
	$(Q)mkdir -p b/home/user
	$(Q)mkdir -p b/home/user/configs
	$(Q)mkdir -p b/home/user/configs/eltra
	$(Q)mkdir -p b/home/user/stubmodules
	$(Q)mkdir -p b/home/user/cel
	$(Q)mkdir -p b/home/user/configs/bhomhom
	$(Q)mkdir -p b/ur_own_infastructure
	$(Q)mkdir -p b/sys/net/logs
	@echo "Linking suggestion..."
	$(Q)cp configs/suggestion.txt b/suggestion.txt
files:
	@echo "Flashing files..."
	$(Q)cp store/licenses.json b/store/licenses.json
	$(Q)cp store/games.txt b/store/games.txt
	$(Q)cp psp/exh.txt b/hard-en/psp/exh.txt
	$(Q)cp firmware.txt b/sys/firmware.txt
	$(Q)cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	$(Q)cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 b/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	$(Q)cp store/games/Incredibox-Smart_Hub.sb3 b/store/games/Incredibox-Smart_Hub.sb3
modules:
	@echo "Loading blash modules..."
	$(Q)cp net/net_environment/port.txt b/sys/net/port.txt
	$(Q)cp net/statistics/ping.A3 b/sys/net/statistics/ping.txt
	$(Q)cp sk-gcc/devices.A3 b/sys/A3_modules/supported_devices.txt
	$(Q)cp sk-gcc/ehshell.txt b/home/user/configs/eltra/ehshell.txt
	$(Q)cp ipynb_stubmodules/bshell_stubmodule.A3 b/home/user/stubmodules/bshell_stub.A3
	$(Q)cp cel/celnum.txt b/home/user/cel/celnum.txt
	$(Q)cp cel/celim.txt b/home/user/cel/celim.txt
	$(Q)cp bhome/bmod.A3 b/home/user/configs/bhomhom/bmod.A3
	$(Q)cp bhome/bshell.A3 b/home/user/configs/bhomhom/bshell.A3
	$(Q)cp net/log.txt b/sys/net/logs/log.txt

clean:
	$(Q)rm -rf b
	$(Q)rm -rf CA3N.zip
	@echo "Ok, i removed everything here."


server:
	$(Q)powershell.exe /c .\\port.bat
	@echo "i'm now connecting you to Arancia 3's Server".
	$(Q)nc -lk -p 30003
	@echo "Done!"

comp:
	@echo "Compressing.."
	zip -r CA3N.zip b
	@echo "Done!"
mov:
	$(Q)cp -r b sk-gcc/blash/b
	$(Q)rm -rf b
	@echo "Moved blash to sk-gcc/blash."