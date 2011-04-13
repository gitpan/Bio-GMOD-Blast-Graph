package Bio::GMOD::Blast::Graph::MyMath;
BEGIN {
  $Bio::GMOD::Blast::Graph::MyMath::AUTHORITY = 'cpan:RBUELS';
}
BEGIN {
  $Bio::GMOD::Blast::Graph::MyMath::VERSION = '0.02';
}
#####################################################################
#
# Cared for by Shuai Weng <shuai@genome.stanford.edu>
#
# Originally created by John Slenk <jces@genome.stanford.edu>
#
# You may distribute this module under the same terms as perl itself
#-----------------------------------------------------------------

require Exporter;
@ISA = qw( Exporter );
@EXPORT_OK = qw( max round floor ceil );

sub max
{
    my( $a, $b ) = @_;

    return( ($a > $b) ? $a : $b );
}

sub round
{
    my( $float ) = shift;
    return( int($float+0.5) );
}

sub floor
{
    my( $float ) = shift;
    return( int($float) );
}

sub ceil
{
    my( $float ) = shift;
    return( int($float+0.5) );
}

1;


__END__
=pod

=encoding utf-8

=head1 NAME

Bio::GMOD::Blast::Graph::MyMath

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

