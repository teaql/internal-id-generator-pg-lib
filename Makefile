

FIRST_LINE := $(shell head -1 models/main.xml)
#VERSION := $(shell date +'%Y-%m-%dT%H-%M')
#VERSION := $(shell   awk -F'version=' '{print $2}' <<< ${FIRST_LINE}  )

VERSION := $(shell bash get-version.sh)


all:
	bash increase-version.sh
	git add -A ./
	git commit -m "update to version: ${VERSION}"
	git push
