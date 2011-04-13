package Bio::GMOD::Blast::Graph::MyDebug;
BEGIN {
  $Bio::GMOD::Blast::Graph::MyDebug::AUTHORITY = 'cpan:RBUELS';
}
BEGIN {
  $Bio::GMOD::Blast::Graph::MyDebug::VERSION = '0.01';
}
#####################################################################
#
# Cared for by Shuai Weng <shuai@genome.stanford.edu>
#
# Originally created by John Slenk <jces@genome.stanford.edu>
#
# You may distribute this module under the same terms as perl itself
#-----------------------------------------------------------------

use Carp;

require Exporter;
@ISA = qw( Exporter );
@EXPORT_OK = qw( debugP dmsg dmsgs assert );

my( $pkgOn ) = {};


sub debugP
{
    my( $flag ) = shift;

    my( $pkg, $file, $line ) = caller();

    $pkgOn{ $pkg } = $flag;
}

# concatenates with " ".
sub dmsg
{
    my( @msg ) = @_;
    my( $flag );

    ( $pkg, $file, $line ) = caller();

    $flag = $pkgOn{ $pkg };

    if( !defined($flag) || $flag != 0 )
    {
    print STDERR "[$pkg $line]", join( " ", @msg ), "\n";
    }
}

# concatenates with ", ".
sub dmsgs
{
    my( @msg ) = @_;
    my( $flag );

    ( $pkg, $file, $line ) = caller();

    $flag = $pkgOn{ $pkg };

    if( !defined($flag) || $flag != 0 )
    {
    print STDERR "[$pkg $line]", join( ", ", @msg ), "\n";
    }
}

sub assert
{
    my( $val, @msg ) = @_;

    if( ! $val )
    {
    confess( "[" . join( " ", @msg ) . "]" );
    }
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Bio::GMOD::Blast::Graph::MyDebug

=head1 AUTHORS

=over 4

=item *

Shuai Weng <shuai@genome.stanford.edu>

=item *

John Slenk <jces@genome.stanford.edu>

=item *

Robert Buels <rmb32@cornell.edu>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2003 by The Board of Trustees of Leland Stanford Junior University.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

