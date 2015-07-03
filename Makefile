all: test
all:
	rm -fr /tmp/owrt-pkgtest
	./owrt-pkgtest -d test -m http://mirror1.mirror.garr.it/mirrors/openwrt/ sys_test

install:
	sudo cp owrt-pkgtest /usr/local/bin

test:
	bash8 owrt-pkgtest
