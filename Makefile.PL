#!/usr/bin/env perl

use ExtUtils::MakeMaker;

WriteMakefile(
      NAME              => "Semi::Semicolons",
      VERSION_FROM      => "lib/Semi/Semicolons.pm",
      PREREQ_PM         => { Filter::Simple => 0 },
);
