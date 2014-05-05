SLAPSHOT
========

A CLI tool to quickly and efficiently release your Android apps to
Hockeyapp.


USAGE:
======

From anywhere inside a valid Android project, run it like this:

	slapshot

Slapshot will ask you for Hockeyapp user credential on the initial
use, and creates a dotfile with your Hockeyapp user credentials after
your initial auth via slapshot.



PREREQUISITES:
==============

You must have some version of Ruby installed first. That's it.

Tested on OS X and Linux.


INSTALL:
========

TODO


TODO:
=====

- First run: ask for hockey app credentials, store in dotfile
- Add multi line release notes (gets until empty/whitespace only line)
- Let user choose "announce (to all project users) or not"?
- If multiple apk files anywhere in project, let user choose which one

- Consider porting to go, avoid ruby/rubygems dependency
- Detect if in android project or not, search up until find git repo, android files or something else?
- Add gradle usage example
- Test on mac & linux
- Record asciinema examples, embed in readme
- Blog it
