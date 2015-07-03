all:
	rm -fr /tmp/owrt-pkgtest
	./owrt-pkgtest -d test -m http://mirror1.mirror.garr.it/mirrors/openwrt/ sys_test
