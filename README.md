SLAPSHOT
========

A CLI tool to quickly and efficiently release your Android apps to
Hockeyapp.

TODO add asciinema example of usage


USAGE:
======

TODO more info on this: First create a write-token for the app through https://rink.hockeyapp.net/manage/auth_tokens

	slapshot --path APK_FILE_PATH --message RELEASE_NOTE_MESSAGE

Note: slapshot will ask you for Hockeyapp write token on the initial
run of the tool, and creates a dotfile with your token after your
initial successful run.


PREREQUISITES:
==============

Nada. It's a Go program. Just download it and stick it into your path.

TODO path export example


INSTALL:
========

TODO


DEVELOP:
========

1. Setup your Go workspace as per http://golang.org/doc/code.html

2. Clone snapshot into

    $GOPATH/src/github.com/thomanil/slapshot/ #You should end up with this readme file in that directory

3. Build and install it:

	go install github.com/thomanil/slapshot

4. Then run it as usual:

	slapshot

5. Or simply compile and run it in the src dir:

	cd $GOPATH/src/github.com/thomanil/slapshot/ && go run slapshot.go

6. Run the unit tests:

	cd $GOPATH/src/github.com/thomanil/slapshot/ && go test
