use Mojo::Base -strict;

use Test::More;

# mojolicious can be used
BEGIN{ use_ok('Mojolicious') }

# mojolicious has version
can_ok('Mojolicious', 'VERSION');

# mojolicious version is 4 
ok(Mojolicious->VERSION =~ /^4\..*$/, 'mojolicious version 4');

done_testing();
