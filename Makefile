# Individual Containers
build-base-os:
	sudo buildah bud base-os/. -t wkoch/base-os

build-node:
	sudo buildah bud node/. -t wkoch/node

build-yarn:
	sudo buildah bud yarn/. -t wkoch/yarn

build-vscode:
	sudo buildah bud vscode/. -t wkoch/vscode

build-all:
	make -s build-base-os
	make -s build-node
	make -s build-yarn
	make -s build-vscode


# Alpine based toolkit
build-toolkit:
	sudo buildah bud toolkit/. -t wkoch/toolkit

config-toolkit:
	sudo buildah from wkoch/toolkit
	sudo buildah config --workingdir=$(PWD) toolkit-working-container

run-toolkit:
	sudo buildah run toolkit-working-container --tty --hostname toolkit -v /home/wkoch:/home/wkoch:Z


# Helpers
cleanup:
	sudo buildah rm -a
	sudo buildah rmi -a

list:
	sudo buildah images
	sudo buildah containers


# Complete, webdev container
build-webdev:
	sudo buildah bud webdev/. -t wkoch/webdev

config-webdev:
	sudo buildah from wkoch/webdev
	sudo buildah config --workingdir='/home/wkoch' --env DISPLAY=$(DISPLAY) webdev-working-container

run-webdev:
	sudo buildah run webdev-working-container --tty --hostname webdev -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/wkoch:$(HOME):Z
