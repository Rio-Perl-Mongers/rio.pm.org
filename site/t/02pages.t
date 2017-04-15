use Mojo::Base -strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Test::More;
use Test::Mojo;

# Site class can be used
BEGIN{ use_ok('Site') }

# all routes ok
my $routes = [qw/FAQ quem_usa mitos diversao desenvolvimento lista
enc_sociais enc_tecnicos livros_e_resenhas CPAN sobre regionais/];

my $t = Test::Mojo->new('Site');
$t->get_ok("/$_")->status_is(200) for @$routes;

done_testing();
