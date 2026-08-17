.PHONY: all

all: deploy files

	@echo "Done."

all:
.PHONY: deploy

deploy:
	@echo "Installing b..."
	mkdir -p b
	mkdir -p b/store
	mkdir -p b/store/games
	mkdir -p b/hard-en/psp
	mkdir -p b/sys
	mkdir -p b/sys/A3_modules
	mkdir -p b/sys/net
files:
	@echo "Flashing files..."
	cp store/licenses.json b/store/licenses.json
	cp psp/exh.txt b/hard-en/psp/exh.txt
	cp firmware.txt b/sys/firmware.txt
	cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	cp store/games/Incredibox-Smart_Hub_Kuh_treatment.sb3 b/store/games/Incredibox-Smart_Hub_Kuh_Treatment.sb3
	
modules:
	@echo "Loading modules..."
	cp net_environment/port.txt b/sys/net/port.txt
.PHONY: clean

clean:
	rm -rf b
	@echo "Ok, i removed everything here."

.PHONY: server

server:
	powershell.exe /c .\\port.bat
	@echo "i'm now connecting you to Arancia 3's Server".
	nc -lk -p 30003