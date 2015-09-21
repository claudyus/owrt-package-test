OpenWrt package compile tester
==============================

.. image:: https://travis-ci.org/claudyus/owrt-package-test.svg?branch=master
    :target: https://travis-ci.org/claudyus/owrt-package-test

This project allow you to test and compile your OpenWrt package against different versions
of openwrt releases.
The goal of this project is to allow you to integrate and use some CI functionality in the
OpenWrt enviroment.


Install the script
------------------

To install the script you can simple type::

  wget https://raw.githubusercontent.com/claudyus/owrt-package-test/master/owrt-pkgtest -O /usr/local/bin/owrt-pkgtest
  chmod a+x /usr/local/bin/owrt-pkgtest


Usage of the script
-------------------

The owrt-pkgtest utilities support the following options::

  owrt-pkgtest [-x] [-a <arch>] [-r <release>] [-d <package_dir_root>] [-b <build_dir>] [-m <mirror_url>] <package_name1> [package_name2] ...


It will download the correct ``arch/release`` sdk from a webserver mirror than it will
copy all the ``package_dir_root`` subdirectory inside the sdk and it will run the
compile target for ``package_name``.

The standard openwrt feeds are included to meet possible depends.

The default values for the options are:

  * arch: ar71xx
  * release: chaos_calmer
  * package_dir_root: `pwd`
  * build_dit: /tmp/owrt-pkgtest
  * mirror: https://downloads.openwrt.org


Example of usage
^^^^^^^^^^^^^^^^

Compile the provided example for chaos_calmer release, arch atheros::

  owrt-pkgtest -a atheros -d test sys_test

Compile openwisp-firmware for ar71xx::

  git clone https://github.com/openwisp/OpenWISP-Firmware
  cd OpenWISP-Firmware
  owrt-pkgtest -d meta openwisp-fw
