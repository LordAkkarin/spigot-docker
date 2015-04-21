all: spigot craftbukkit
uninstall: clean-base clean-spigot clean-craftbukkit

base:
	docker build -t spigot/base ./base/

spigot: base
	docker build -t spigot/spigot ./spigot/

craftbukkit: base
	docker build -t spigot/craftbukkit ./craftbukkit/

clean-base:
	docker rmi spigot/base

clean-spigot:
	docker rmi spigot/spigot

clean-craftbukkit:
	docker rmi spigot/craftbukkit

.PHONY: all base spigot craftbukkit clean-base clean-spigot clean-craftbukkit
