all: test
	rm -fr /tmp/owrt-pkgtest
	./owrt-pkgtest -a atheros -d test -m http://mirror1.mirror.garr.it/mirrors/openwrt/ sys_test ethtool

install:
	sudo cp owrt-pkgtest /usr/local/bin

test:
	bash8 owrt-pkgtest
