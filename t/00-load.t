# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

# $Id: 00-load.t,v 1.2 2002/10/17 03:17:33 lem Exp $

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 3 };
use Net::FTPServer::PWP::Server;
ok(1); # If we made it this far, we're ok.
use Net::FTPServer::PWP::DirHandle;
ok(2); # If we made it this far, we're ok.
use Net::FTPServer::PWP::FileHandle;
ok(3); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

