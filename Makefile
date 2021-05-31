
all: i2p-in-private-browsing-mode-firefox/manifest.json

clean:
	rm i2p-in-private-browsing-mode-firefox -rfv

i2p-in-private-browsing-mode-firefox:
	git clone https://i2pgit.org/idk/i2p-in-private-browsing-mode-firefox;
	cd i2p-in-private-browsing-mode-firefox && \
		git pull origin master
	rm i2p-in-private-browsing-mode-firefox/manifest.json

i2p-in-private-browsing-mode-firefox/manifest.json: i2p-in-private-browsing-mode-firefox sed
	cp manifest.json i2p-in-private-browsing-mode-firefox/manifest.json

sed:
	sed -i 's|i2ppb|i2prhz|g' i2p-in-private-browsing-mode-firefox/Makefile