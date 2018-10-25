# pjsip on host
Scripts for building pjsip environment for host machine
## Building
1. Place pjproject-2.4.tar.bz2 in repo folder (archieve could be obtained here http://www.pjsip.org/release/2.4/pjproject-2.4.tar.bz2).
2. Run `./build_pjproject.sh` to extract archieve and build it
3. Run `make` to build `simpleua`

## Running
Just run `simpleua` with address of remote sip client, for example:

`./simpleua sip:test@192.168.1.128`

This command will directly connect two hosts. You will be able to here .wav playing on the other end.

### Advanced running
1. There are a bunch of options in simpleua.c (`PLAYBACK_ONLY`, etc.). For example, using `PLAYBACK_AND_RECORD` option
you will be able to play sound from .wav instead of using microphone and record sound to .wav instead of using speakers.
2. You can use `simple_pjsua` to test call with server registration.

   Just run `./simple_pjsua` on one host, and the `./simple_pjsua sip:6001@test<server ip>`, where `6001`
   is a phone number of the other peer. You have to configure asterisk server before, or use some pre-configured one.
