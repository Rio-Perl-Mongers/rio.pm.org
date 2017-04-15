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


# defined with wrong class instance
my $wrong = bless {}, 'Foo::Bar';
eval{ Site::Routes->load($wrong) };
ok($@, 'not Mojolicious::Routes class instance');


# defined route instance
my $r = Mojolicious::Routes->new;
eval{ Site::Routes->load($r) };
ok($r->isa('Mojolicious::Routes'), 'is a Mojolicious::Routes');
ok(!$@, 'defined route test ok');


done_testing();
