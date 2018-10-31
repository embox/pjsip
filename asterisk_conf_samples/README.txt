There are two files extensions.conf and pjsip.conf which can be placed in /etc/asterisk.
After server configuration, you will have 3 clients - simple_pjsua_linux1, simple_pjsua_linux2,
simple_pjsua_embox.

You can register and make a call between any two of these clients.

For example, to call from Embox to Linux:
Run on Linux (simple_pjsua_linux1). Don't forget to change (SIP_DOMAIN, SIP_USER and SIP_PASSWD) before:
 $ ./simple_pjsua

Run on Embox (simple_pjsua_embox):
 $ simple_pjsua_imported sip:6001@<asterisk server ip>
