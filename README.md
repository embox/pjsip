# pjsip on host
Scripts for building pjsip environment for host machine
## Building
1. Place pjproject-2.4.tar.bz2 in repo folder (archieve could be obtained here http://www.pjsip.org/download.htm).
2. Run `./build_pjproject.sh` to extract archieve and build it
3. Run `make` to build `simpleua`

## Running
Just run `simpleua` with address of remote sip client, for example:

`./simpleua sip:test@192.168.1.128`
