package Net::FTPServer::PWP::DirHandle;

# $Id: DirHandle.pm,v 1.5 2002/10/17 19:41:07 lem Exp $

use 5.00500;
use strict;

require Exporter;
use vars qw($VERSION @ISA);

use Net::FTPServer::Full::DirHandle;

@ISA = qw(Net::FTPServer::Full::DirHandle);

=pod

=head1 NAME

Net::FTPServer::PWP::DirHandle - Specialized ::DirHandle for Net::FTPServer::PWP

=head1 SYNOPSIS

  use Net::FTPServer::PWP::DirHandle;

=head1 DESCRIPTION

This module complements C<Net::FTPServer::PWP> by encapsulating
directory-handling methods. Currently, it implements the following
methods:

=over

=cut

$VERSION = '1.00';

				# This method should not be here. We should
				# use Net::FTPServer::Full::delete, but the
				# (as of this writing) version, tickles a
				# bug in (so far), Darwin's rmdir().

=pod

=item C<-E<gt>delete>

Mac OS X 10.1.5 (darwin) seems to have a bug in C<rmdir()> when
its argument ends in a slash. This method works around this limitation
by retrying the C<rmdir()> without the slash in case of failure.

=cut

sub delete
  {
    my $self = shift;

				# XXX - It looks like rmdir() with a
				# trailing slash, makes some OSes sick

    unless (rmdir $self->{_pathname}) {
	my $path = $self->{_pathname};
	$path =~ s!/+$!!;
	length $path && rmdir $path or return -1;
    }

    return 0;
  }

1;
__END__
# Below is stub documentation for your module. You better edit it!

=back

=head2 EXPORT

None by default.


=head1 HISTORY

$Id: DirHandle.pm,v 1.5 2002/10/17 19:41:07 lem Exp $

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
