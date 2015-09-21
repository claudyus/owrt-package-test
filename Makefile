all: test
	rm -fr /tmp/owrt-pkgtest
	./owrt-pkgtest -x -d test -m http://mirror1.mirror.garr.it/mirrors/openwrt/ sys_test ethtool

test:
	bash8 owrt-pkgtest
