all: install

install: upgrade gdal vim p7zip tippecanoe nodejs yarn kubo docker pmtiles charites

upgrade:
	@echo upgrade
	apt update
	apt dist-upgrade -y

gdal:
	@echo install gdal/ogr, vim
	apt install -y gdal-bin

vim:
	@echo install vim
	apt install -y vim

p7zip:
	@echo install p7zip-full
	apt install -y p7zip-full

tippecanoe:
	@echo install tippecanoe dependencies
	apt install -y build-essential libsqlite3-dev zlib1g-dev
	@echo install tippecanoe
	wget https://github.com/felt/tippecanoe/archive/refs/tags/2.35.0.tar.gz
	tar zxf 2.35.0.tar.gz
	cd tippecanoe-2.35.0; make; make install
	rm 2.35.0.tar.gz
	rm -fr tippecanoe-2.35.0

nodejs:
	@echo install nodejs
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

kubo:
	@echo install kubo
	wget https://github.com/ipfs/kubo/releases/download/v0.24.0/kubo_v0.24.0_linux-amd64.tar.gz
	tar zxf kubo_v0.24.0_linux-amd64.tar.gz
	sh kubo/install.sh
	rm -fr kubo*

docker:
	@echo install docker
	apt install -y docker.io
	mkdir -p $(HOME)/.docker/cli-plugins
	curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-aarch64 -o $(HOME)/.docker/cli-plugins/docker-compose
	chown -R $(USER):$(USER) $(HOME)/.docker
	usermod -aG docker $(USER)
	rm -fr OME

pmtiles:
	@echo install pmtiles
	wget https://github.com/protomaps/go-pmtiles/releases/download/v1.11.1/go-pmtiles_1.11.1_Linux_arm64.tar.gz
	tar zxf go-pmtiles_1.11.1_Linux_arm64.tar.gz
	mv pmtiles /usr/local/bin/
	rm LICENSE README.md go-pmtiles*

charites:
	@echo install unvt/charites
	npm install -g @unvt/charites