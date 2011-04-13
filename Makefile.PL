
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'display a graphical summary of a BLAST report',
  'AUTHOR' => 'Shuai Weng <shuai@genome.stanford.edu>, John Slenk <jces@genome.stanford.edu>, Robert Buels <rmb32@cornell.edu>',
  'BUILD_REQUIRES' => {
    'Capture::Tiny' => '0',
    'File::Spec::Functions' => '0',
    'File::Temp' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Bio-GMOD-Blast-Graph',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Bio::GMOD::Blast::Graph',
  'PREREQ_PM' => {
    'Bio::Root::IO' => '0',
    'Bio::SearchIO' => '0',
    'CGI' => '0',
    'Carp' => '0',
    'Exporter' => '0',
    'GD' => '0',
    'integer' => '0'
  },
  'VERSION' => '0.01',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



