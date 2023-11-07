all: install

install: gdal vim tippecanoe nodejs yarn

gdal:
	@echo install gdal/ogr, vim
	apt update
	apt install -y gdal-bin
vim:
	@echo install vim
	apt update
	apt install -y vim
tippecanoe:
	@echo install tippecanoe dependencies
	apt update
	apt install -y build-essential libsqlite3-dev zlib1g-dev
	@echo install tippecanoe
	wget https://github.com/felt/tippecanoe/archive/refs/tags/2.35.0.tar.gz
	tar zxf 2.35.0.tar.gz
	cd tippecanoe-2.35.0; make; make install
	rm 2.35.0.tar.gz
	rm -fr tippecanoe-2.35.0
nodejs:
	@echo install nodejs
	apt update
	apt install -y ca-certificates curl gnupg
	mkdir -p /etc/apt/keyrings
	curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
	echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
	apt update
	apt install nodejs -y
yarn:
	@echo install yarn
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
	apt update
	apt install -y yarn
