ifeq ($(V),1)
 Q =
 else
 Q = @
 endif
BLASH_DIR = b
.PHONY: make all deploy files modules libs clean server s-connect comp mov back

all: deploy files modules libs
	@echo "Compact A3N Now in use."
deploy:
	@echo "Logical blash Rendering..."
	$(Q)mkdir -p $(BLASH_DIR)
	$(Q)mkdir -p $(BLASH_DIR)/store
	$(Q)mkdir -p $(BLASH_DIR)/store/games
	$(Q)mkdir -p $(BLASH_DIR)/hard-en/psp
	$(Q)mkdir -p $(BLASH_DIR)/sys
	$(Q)mkdir -p $(BLASH_DIR)/sys/A3_modules
	$(Q)mkdir -p $(BLASH_DIR)/sys/net
	$(Q)mkdir -p $(BLASH_DIR)/sys/net/statistics
	$(Q)mkdir -p $(BLASH_DIR)/home
	$(Q)mkdir -p $(BLASH_DIR)/home/user
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/eltra
	$(Q)mkdir -p $(BLASH_DIR)/home/user/stubmodules
	$(Q)mkdir -p $(BLASH_DIR)/home/user/cel
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/bhomhom
	$(Q)mkdir -p $(BLASH_DIR)/ur_own_infastructure
	$(Q)mkdir -p $(BLASH_DIR)/sys/net/logs
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains
	@echo "Making library folders..."
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/butterfly
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/maxinum
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/lazybum
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/peceteN36640
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/cve
	$(Q)mkdir -p $(BLASH_DIR)/home/user/configs/libs/gougd
	@echo "Linking suggestion..."
	$(Q)cp configs/suggestion.txt $(BLASH_DIR)/suggestion.txt
	@echo "Done."
files:
	@echo "Flashing files..."
	$(Q)cp store/licenses.json $(BLASH_DIR)/store/licenses.json
	$(Q)cp store/games.txt $(BLASH_DIR)/store/games.txt
	$(Q)cp psp/exh.txt $(BLASH_DIR)/hard-en/psp/exh.txt
	$(Q)cp firmware.txt $(BLASH_DIR)/sys/firmware.txt
	$(Q)cp store/games/Scratch_cats_s_Road.sb $(BLASH_DIR)/store/games/Scratch_cats_s_Road.sb
	$(Q)cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 $(BLASH_DIR)/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	$(Q)cp store/games/Incredibox-Smart_Hub.sb3 $(BLASH_DIR)/store/games/Incredibox-Smart_Hub.sb3
	@echo "Done."
modules:
	@echo "Loading blash modules..."
	$(Q)cp net/net_environment/port.txt $(BLASH_DIR)/sys/net/port.txt
	$(Q)cp net/statistics/ping.A3 $(BLASH_DIR)/sys/net/statistics/ping.txt
	$(Q)cp net/statistics/games.A3 $(BLASH_DIR)/sys/net/games.txt
	$(Q)cp sk-gcc/devices.A3 $(BLASH_DIR)/sys/A3_modules/supported_devices.txt
	$(Q)cp sk-gcc/ehshell.txt $(BLASH_DIR)/home/user/configs/eltra/ehshell.txt
	$(Q)cp ipynb_stubmodules/bshell_stubmodule.A3 $(BLASH_DIR)/home/user/stubmodules/bshell_stub.A3
	$(Q)cp cel/celnum.txt $(BLASH_DIR)/home/user/cel/celnum.txt
	$(Q)cp cel/celim.txt $(BLASH_DIR)/home/user/cel/celim.txt
	$(Q)cp bhome/bmod.A3 $(BLASH_DIR)/home/user/configs/bhomhom/bmod.A3
	$(Q)cp bhome/bshell.A3 $(BLASH_DIR)/home/user/configs/bhomhom/bshell.A3
	$(Q)cp net/log.txt $(BLASH_DIR)/sys/net/logs/log.txt
	@echo "copying component files..."
	$(Q)cp sk-gcc/blash/blashmodules/hiberfil.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/hiberfil.A3
	$(Q)cp sk-gcc/blash/blashmodules/butiwe.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/butiwe.A3
	@echo "copying Library files..."
	$(Q)cp sk-gcc/blash/blashmodules/lazybum.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/lazybum.A3
	$(Q)cp sk-gcc/blash/blashmodules/peceteN36640.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/peceteN36640.A3
	$(Q)cp sk-gcc/blash/blashmodules/maxinum.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/maxinum.A3
	$(Q)cp sk-gcc/blash/blashmodules/butterfly.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/butterfly.A3
	$(Q)cp sk-gcc/blash/blashmodules/cve.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/cve.A3
	$(Q)cp sk-gcc/blash/blashmodules/gougd.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/gougd.A3
	@echo "Done."
libs:
	@echo "Initializing libraries..."
	@echo "lazybum"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/lazybum.A3 $(BLASH_DIR)/home/user/configs/libs/lazybum/lazybum.A3
	@echo "peceteN36640"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/peceteN36640.A3 $(BLASH_DIR)/home/user/configs/libs/peceteN36640/peceteN36640.A3
	@echo "maxinum"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/maxinum.A3 $(BLASH_DIR)/home/user/configs/libs/maxinum/maxinum.A3
	@echo "butterfly"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/butterfly.A3 $(BLASH_DIR)/home/user/configs/libs/butterfly/butterfly.A3
	@echo "cve"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/cve.A3 $(BLASH_DIR)/home/user/configs/libs/cve/cve.A3
	@echo "gougd"
	$(Q)cp $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/gougd.A3 $(BLASH_DIR)/home/user/configs/libs/gougd/gougd.A3
	@echo "Assessing Library modules on $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules..."
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/lazybum.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b0.A3
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/peceteN36640.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b1.A3
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/maxinum.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b2.A3
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/butterfly.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b3.A3
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/cve.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b4.A3
	$(Q)mv $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/gougd.A3 $(BLASH_DIR)/home/user/configs/bhomhom/blashmodules/libremains/b5.A3
	@echo "Done."
clean:
	$(Q)rm -rf $(BLASH_DIR)
	$(Q)rm -rf CA3N.zip
	$(Q)rm -rf sk-gcc/blash/$(BLASH_DIR)
	@echo "Ok, i removed everything here."
server:
	clear
	@echo "i'm now connecting you to Arancia 3's Server".
	$(Q)socat TCP-LISTEN:30003,fork,reuseaddr -
s-connect:
	clear
	@echo "Connected."
	$(Q)nc 127.0.0.1 30003
comp:
	@echo "Compressing.."
	$(Q)zip -r CA3N.zip $(BLASH_DIR)
	@echo "Done!"
mov:
	$(Q)cp -r $(BLASH_DIR) sk-gcc/blash/$(BLASH_DIR)
	$(Q)rm -rf $(BLASH_DIR)
	@echo "Moved blash to sk-gcc/blash."
back:
	$(Q)cp -r sk-gcc/blash/$(BLASH_DIR) $(BLASH_DIR)
	$(Q)rm -rf sk-gcc/blash/$(BLASH_DIR)
	@echo "Moved blash back to root."