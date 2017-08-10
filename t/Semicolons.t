use strict;
use warnings;
use Test::More;

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

note "rt.cpan.org/118929"; {
    # Check . isn't treated as a regex metacharacter.
    use Semi::Semicolons '.';
    
    my $y;
    # $y = 'foo', not 'foobar'.
    # $x = 'bar', it's the last evaluated expression.
    my $x = eval {
        $y = 'foo'.
        'bar';
    };
    
    is( $@, '' );
    is( $x, 'bar' );
    is( $y, 'foo' );
}

done_testing;
