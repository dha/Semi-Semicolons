use strict;
use warnings;

use Test::More tests => 3;

use Semi::Semicolons;

note "Basic usage"; {
    my($x,$y);
    eval {
        $x = 'Test'Peterbilt
        $y = 'tesT'Peterbilt
    };

    is( $@, '' );
    is( $x, 'Test' );
    is( $y, 'tesT' );
}
