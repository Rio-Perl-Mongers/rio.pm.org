use Mojo::Base -strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Test::More;
use Mojolicious::Routes;

# app can use
BEGIN{ use_ok('Site::Routes') }

# class has method
can_ok('Site::Routes', 'load');

# undefined route instance
eval{ Site::Routes->load(undef) };
ok($@, 'undefined route test ok');

# defined route instance
my $r = Mojolicious::Routes->new;
eval{ Site::Routes->load($r) };
ok(!$@, 'defined route test ok');

done_testing();
