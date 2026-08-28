ifeq ($(V),1)
 Q =
 else
 Q = @
 endif

.PHONY: make all deploy files modules libs clean server s-connect comp mov back

all: deploy files modules libs
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
	$(Q)mkdir -p b/home/user/configs/bhomhom/blashmodules
	$(Q)mkdir -p b/home/user/configs/bhomhom/blashmodules/libremains
	@echo "Making library folders..."
	$(Q)mkdir -p b/home/user/configs/libs/butterfly
	$(Q)mkdir -p b/home/user/configs/libs/maxinum
	$(Q)mkdir -p b/home/user/configs/libs/lazybum
	$(Q)mkdir -p b/home/user/configs/libs/peceteN36640
	$(Q)mkdir -p b/home/user/configs/libs/cve
	@echo "Linking suggestion..."
	$(Q)cp configs/suggestion.txt b/suggestion.txt
	@echo "Done."
files:
	@echo "Flashing files..."
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
	$(Q)cp sk-gcc/devices.A3 b/sys/A3_modules/supported_devices.txt
	$(Q)cp sk-gcc/ehshell.txt b/home/user/configs/eltra/ehshell.txt
	$(Q)cp ipynb_stubmodules/bshell_stubmodule.A3 b/home/user/stubmodules/bshell_stub.A3
	$(Q)cp cel/celnum.txt b/home/user/cel/celnum.txt
	$(Q)cp cel/celim.txt b/home/user/cel/celim.txt
	$(Q)cp bhome/bmod.A3 b/home/user/configs/bhomhom/bmod.A3
	$(Q)cp bhome/bshell.A3 b/home/user/configs/bhomhom/bshell.A3
	$(Q)cp net/log.txt b/sys/net/logs/log.txt
	@echo "copying component files..."
	$(Q)cp sk-gcc/blash/blashmodules/hiberfil.A3 b/home/user/configs/bhomhom/blashmodules/hiberfil.A3
	$(Q)cp sk-gcc/blash/blashmodules/butiwe.A3 b/home/user/configs/bhomhom/blashmodules/butiwe.A3
	@echo "copying Library files..."
	$(Q)cp sk-gcc/blash/blashmodules/lazybum.A3 b/home/user/configs/bhomhom/blashmodules/lazybum.A3
	$(Q)cp sk-gcc/blash/blashmodules/peceteN36640.A3 b/home/user/configs/bhomhom/blashmodules/peceteN36640.A3
	$(Q)cp sk-gcc/blash/blashmodules/maxinum.A3 b/home/user/configs/bhomhom/blashmodules/maxinum.A3
	$(Q)cp sk-gcc/blash/blashmodules/butterfly.A3 b/home/user/configs/bhomhom/blashmodules/butterfly.A3
	$(Q)cp sk-gcc/blash/blashmodules/cve.A3 b/home/user/configs/bhomhom/blashmodules/cve.A3
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
	@echo "Assessing Library modules on b/home/user/configs/bhomhom/blashmodules..."
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/lazybum.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b0.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/peceteN36640.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b1.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/maxinum.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b2.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/butterfly.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b3.A3
	$(Q)mv b/home/user/configs/bhomhom/blashmodules/cve.A3 b/home/user/configs/bhomhom/blashmodules/libremains/b4.A3
	@echo "Done."
clean:
	$(Q)rm -rf b
	$(Q)rm -rf CA3N.zip
	$(Q)rm -rf sk-gcc/blash/b
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
	$(Q)zip -r CA3N.zip b
	@echo "Done!"
mov:
	$(Q)cp -r b sk-gcc/blash/b
	$(Q)rm -rf b
	@echo "Moved blash to sk-gcc/blash."
back:
	$(Q)cp -r sk-gcc/blash/b b
	$(Q)rm -rf sk-gcc/blash/b
	@echo "Moved blash back to root."