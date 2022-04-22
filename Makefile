.PHONY: create-docset
create-docset:
	./create-docset

.PHONY: docker-image
docker-image:
	docker build -t carp-docset .

.PHONY: remove-docker-image
remove-docker-image:
	docker rmi carp-docset

.PHONY: create-docset-docker
create-docset-docker: docker-image
	docker run -it --rm -v $(PWD):/opt/workdir carp-docset

.PHONY: clean
clean:
	rm -rf carp.docset
