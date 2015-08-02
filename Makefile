# build the docker-td-agent image.

# can come from command line make
IMAGEACCOUNT ?= tacodata
V ?= 0.0.1

H=docker-td-agent
IMAGENAME = ${IMAGEACCOUNT}/$H
IMAGETAG = $V

build:
	docker build -t ${IMAGENAME}:${IMAGETAG} . 

push:
	docker push ${IMAGENAME}:${IMAGETAG}

clean :
	rm -f *.tmp *.src
