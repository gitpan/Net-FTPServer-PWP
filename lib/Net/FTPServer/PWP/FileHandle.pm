package Net::FTPServer::PWP::FileHandle;

# $Id: FileHandle.pm,v 1.4.4.1 2002/11/13 19:29:11 lem Exp $

use 5.00500;
use strict;

require Exporter;
use vars qw($VERSION @ISA);

use Net::FTPServer::Full::FileHandle;

@ISA = qw(Net::FTPServer::Full::FileHandle);

$VERSION = '1.00';


# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

Net::FTPServer::PWP::FileHandle - Specialized ::FileHandle for Net::FTPServer::PWP

=head1 SYNOPSIS

  use Net::FTPServer::PWP::FileHandle;

=head1 DESCRIPTION

This module complements C<Net::FTPServer::PWP> by encapsulating
directory-handling methods.

Currently this is just a placeholder that directly maps the calls to
C<Net::FTPServer::Full::FileHandle>.

=over

=back

=head2 EXPORT

None by default.


=head1 HISTORY

$Id: FileHandle.pm,v 1.4.4.1 2002/11/13 19:29:11 lem Exp $

=over 8

=item 1.00

Original version; created by h2xs 1.21 with options

  -ACOXcfkn
	Net::FTPServer::PWP
	-v1.00
	-b
	5.5.0

=back


=head1 AUTHOR

Luis E. Munoz <luismunoz@cpan.org>

=head1 SEE ALSO

L<Net::FTPServer::Full>, L<Net::FTPServer>, L<perl>.

=cut
