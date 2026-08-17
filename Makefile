.PHONY: deploy

deploy:
	@echo "Installing b..."
	mkdir -p b
	mkdir -p b/store
	mkdir -p b/store/games
	mkdir -p b/hard-en/psp
	mkdir -p b/sys
	@echo "Flashing files..."
	cp store/licenses.json b/store/licenses.json
	cp psp/exh.txt b/hard-en/psp/exh.txt
	cp firmware.txt b/sys/firmware.txt
	cp store/games/Scratch_cats_s_Road.sb b/store/games/Scratch_cats_s_Road.sb
	@echo "Done."
	

.PHONY: clean

clean:
	rm -rf b
	@echo "Ok, i removed everything here."