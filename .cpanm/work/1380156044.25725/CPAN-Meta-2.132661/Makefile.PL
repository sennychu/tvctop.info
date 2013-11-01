
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.17;



my %WriteMakefileArgs = (
  "ABSTRACT" => "the distribution metadata for a CPAN dist",
  "AUTHOR" => "David Golden <dagolden\@cpan.org>, Ricardo Signes <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "CPAN-Meta",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "CPAN::Meta",
  "PREREQ_PM" => {
    "CPAN::Meta::Requirements" => "2.121",
    "CPAN::Meta::YAML" => "0.008",
    "Carp" => 0,
    "JSON::PP" => "2.27200",
    "Parse::CPAN::Meta" => "1.4403",
    "Scalar::Util" => 0,
    "strict" => 0,
    "version" => "0.88",
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Dumper" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Basename" => 0,
    "File::Spec" => 0,
    "File::Spec::Functions" => 0,
    "File::Temp" => "0.20",
    "IO::Dir" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "List::Util" => 0,
    "Test::More" => "0.88",
    "overload" => 0,
    "utf8" => 0
  },
  "VERSION" => "2.132661",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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

# Added by Dist::Zilla::Plugin::MakeMaker::Highlander
if ( $] < 5.012
  && ! $ENV{PERL_NO_HIGHLANDER}
  && ! ( $ENV{PERL_MM_OPT} && $ENV{PERL_MM_OPT} =~ /(?:INSTALL_BASE|PREFIX)/ )
  && ! grep { /INSTALL_BASE/ || /PREFIX/ } @ARGV
) {
    $WriteMakefileArgs{UNINST} = 1;
}

WriteMakefile(%WriteMakefileArgs);



