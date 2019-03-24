# Alpine based toolkit (Git, Node, NPM)
# Debian Stretch-slim based imaged with VS Code and the whole stack.

toolkit:
	# Build
	sudo buildah bud toolkit/. --tag toolkit
	# Configure
	sudo buildah from toolkit
	sudo buildah config --workingdir=$(HOME) --user=$(USER) toolkit-working-container
	# Run
	sudo buildah run --tty --hostname $(HOSTNAME) -v $(HOME):$(HOME):Z toolkit-working-container

webdev:
	# Build
	sudo buildah bud webdev/. --tag webdev
	# Configure
	sudo buildah from webdev
	sudo buildah config --workingdir=$(HOME) --user=$(USER) --env DISPLAY=$(DISPLAY) webdev-working-container
	# Run
	sudo buildah run --tty --hostname $(HOSTNAME) -v /tmp/.X11-unix:/tmp/.X11-unix -v $(HOME):$(HOME):Z webdev-working-container

# Helpers
cleanup:
	sudo buildah rm -a
	sudo buildah rmi -a

list:
	sudo buildah images
	sudo buildah containers
