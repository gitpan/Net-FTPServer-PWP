#!/bin/sh
# -*- perl -*-
exec perl -x -wT $0 "$@";
exit 1;
#!perl

# Net::FTPServer::PWP - A Perl FTP Server
# Copyright (C) 2002 Luis E. Munoz <luismunoz@cpan.org>

# $Id: pwp-ftpd.pl,v 1.2.4.1 2002/11/13 19:29:11 lem Exp $

use strict;
use Net::FTPServer::PWP::Server;

my $ftps = Net::FTPServer::PWP::Server->run;
