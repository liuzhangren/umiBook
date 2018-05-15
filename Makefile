pjName := umiFrame

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3080:80 \
		-p 3088:8080 \
		-p 3030:3000 \
		-p 3000:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash

in:
	docker exec \
		-ti \
		${pjName} \
		/bin/bash

export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

# umiclean: clean
# 	rm -rf ./page*

# umibuild: build
# 	cp -R ./src/pages pages
# 	cp -R ./src/pagelibs pagelibs

# umirebuild: umiclean umibuild

umibuild: build
	cp public/pages/document.html src/pages/document.ejs

umirebuild: rebuild
	cp public/pages/document.html src/pages/document.ejs

dev:
	umi dev

static:
	env COMPRESS=none umi build

serve:
	serve -p 8000 ./dist/