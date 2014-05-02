IMAGENAME=jenkinsciinfra/bind
TAG=$(shell date '+%Y%m%d_%H%M%S')

# test directory  for local interactive testing
DATA=${PWD}/etc/bind.local

image :
	docker build -t ${IMAGENAME} .

run :
	docker run -v ${DATA}:/etc/bind.local -P --rm -i -t ${IMAGENAME}

tag :
	docker tag ${IMAGENAME} ${IMAGENAME}:${TAG}

push :
	docker push ${IMAGENAME}



