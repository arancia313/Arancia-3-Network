SK = $(SKGCC)
include $(SK)/include/general.mak
.PHONY: make all deploy files modules libs clean server s-connect comp mov back
# hint: Please note that the announcements and server-esclusive things will be escluded from the blash,
# hint: because they are server-esclusive. The Makefile will not contain those components.
# hint: The makefile will only contain the components that sk-gcc uses. I'm not responsible
# hint: if you edit this makefile or paste random code in it.
all: compile deploy files modules libs 
	@echo "|=======================|"
	@echo "|Compact A3N Now in use.|"
	@echo "|=======================|".
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
	$(Q)mkdir -p b/home/user/stubmodules
	$(Q)mkdir -p b/home/user/cel
	$(Q)mkdir -p b/home/user/configs/bhomhom
	$(Q)mkdir -p b/ur_own_infastructure
	$(Q)mkdir -p b/sys/net/logs
	$(Q)mkdir -p b/home/user/configs/bhomhom/blashmodules
	$(Q)mkdir -p b/home/user/configs/bhomhom/blashmodules/libremains
	@echo "Making library folders..."
	$(Q)mkdir -p b/home/user/configs/libs
	$(Q)mkdir -p b/home/user/configs/libs/butterfly
	$(Q)mkdir -p b/home/user/configs/libs/maxinum
	$(Q)mkdir -p b/home/user/configs/libs/lazybum
	$(Q)mkdir -p b/home/user/configs/libs/peceteN36640
	$(Q)mkdir -p b/home/user/configs/libs/cve
	$(Q)mkdir -p b/home/user/configs/libs/gougd
	@echo "Done."
files:
	@echo "Flashing files..."
	$(Q)cp -r $(SKGCC)/blash/blashmodules/lazybum.A3 b/home/user/configs/bhomhom/blashmodules/lazybum.A3
	$(Q)cp -r $(SKGCC)/blash/blashmodules/peceteN36640.A3 b/home/user/configs/bhomhom/blashmodules/peceteN36640.A3
	$(Q)cp -r $(SKGCC)/blash/blashmodules/maxinum.A3 b/home/user/configs/bhomhom/blashmodules/maxinum.A3
	$(Q)cp -r $(SKGCC)/blash/blashmodules/butterfly.A3 b/home/user/configs/bhomhom/blashmodules/butterfly.A3
	$(Q)cp -r $(SKGCC)/blash/blashmodules/cve.A3 b/home/user/configs/bhomhom/blashmodules/cve.A3
	$(Q)cp -r $(SKGCC)/blash/blashmodules/gougd.A3 b/home/user/configs/bhomhom/blashmodules/gougd.A3
	$(Q)cp store/licenses.json b/store/licenses.json
	$(Q)cp store/games.txt b/store/games.txt
	$(Q)cp psp/exh.txt b/hard-en/psp/exh.txt
	$(Q)cp firmware.txt b/sys/firmware.txt
	$(Q)cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	$(Q)cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 b/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	$(Q)cp store/games/Incredibox-Smart_Hub.sb3 b/store/games/Incredibox-Smart_Hub.sb3
	@echo "Done."
modules:
	@echo "Loading blash modules..."
	$(Q)cp net/net_environment/port.txt b/sys/net/port.txt
	$(Q)cp net/statistics/ping.A3 b/sys/net/statistics/ping.txt
	$(Q)cp net/statistics/games.A3 b/sys/net/games.txt
	$(Q)cp $(SK)/devices.A3 b/sys/A3_modules/supported_devices.txt
	$(Q)cp ipynb_stubmodules/bshell_stubmodule.A3 b/home/user/stubmodules/bshell_stub.A3
	$(Q)cp bhome/bmod.A3 b/home/user/configs/bhomhom/bmod.A3
	$(Q)cp bhome/bshell.A3 b/home/user/configs/bhomhom/bshell.A3
	$(Q)cp net/log.txt b/sys/net/logs/log.txt
	@echo "copying component files..."
	$(Q)cp $(SK)/blash/blashmodules/hiberfil.A3 b/home/user/configs/bhomhom/blashmodules/hiberfil.A3
	$(Q)cp $(SK)/blash/blashmodules/butiwe.A3 b/home/user/configs/bhomhom/blashmodules/butiwe.A3
	@echo "copying Library files..."
	@echo "Done."
libs:
	@echo "Initializing libraries..."
	@echo "lazybum"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/lazybum.A3 b/home/user/configs/libs/lazybum/lazybum.A3
	@echo "peceteN36640"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/peceteN36640.A3 b/home/user/configs/libs/peceteN36640/peceteN36640.A3
	@echo "maxinum"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/maxinum.A3 b/home/user/configs/libs/maxinum/maxinum.A3
	@echo "butterfly"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/butterfly.A3 b/home/user/configs/libs/butterfly/butterfly.A3
	@echo "cve"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/cve.A3 b/home/user/configs/libs/cve/cve.A3
	@echo "gougd"
	$(Q)cp b/home/user/configs/bhomhom/blashmodules/gougd.A3 b/home/user/configs/libs/gougd/gougd.A3
	@echo "Assessing Library modules on b/home/user/configs/bhomhom/blashmodules..."
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/lazybum.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b0.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/peceteN36640.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b1.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/maxinum.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b2.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/butterfly.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b3.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/cve.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b4.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/gougd.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b5.A3
	@echo "Done."
	@echo "Preparing A3N Live..."
	$(Q)cp -r live b/A3N_Live
compile:
	@echo "Building latest game to match structures..."
	$(Q)$(MAKE) -C ./store/games
ripe:
	$(Q)$(MAKE) -C ./store/games ripe
	$(Q)rm -rf b
	$(Q)rm -rf CA3N.zip
	$(Q)rm -rf $(SK)/blash/b
	$(Q)rm -rf $(SK)/.json/directories.A3
	$(Q)rm -rf $(SK)/blash/blashmodules/butiwe.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/butterfly.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/cve.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/gougd.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/hiberfil.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/lazybum.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/maxinum.A3O
	$(Q)rm -rf $(SK)/blash/blashmodules/peceteN36640.A3O
	$(Q)rm -rf $(HOME)/blash
	@echo "|==============================|"
	@echo "|Ok, i removed everything here.|"
	@echo "|==============================|"
server:
	clear
	@echo "i'm now connecting you to Arancia 3's Server".
	$(Q)socat TCP-LISTEN:30003,fork,reuseaddr TCP:127.0.0.1:30003
s-connect:
	clear
	@echo "Connected."
	$(Q)nc 127.0.0.1 30003
comp:
	@echo "Compressing.."
	$(Q)zip -r CA3N.zip b
	@echo "Done!"
mov:
	$(Q)cp -r b $(BLASH_OP)
	$(Q)rm -rf b
	@echo "Moved blash to $(SK)/blash."
back:
	$(Q)mv  $(SK)/blash/b b
	@echo "Moved blash back to root."
