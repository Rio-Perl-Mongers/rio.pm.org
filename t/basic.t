use Mojo::Base -strict;

use Test::More tests => 25;
use Test::Mojo;

use_ok 'Site';

my @pages_index = (
    qw/FAQ quem_usa mitos diversao desenvolvimento lista
        enc_sociais enc_tecnicos livros_e_resenhas CPAN sobre regionais/
);

my $t = Test::Mojo->new('Site');

map { $t->get_ok("/$_")->status_is(200) } @pages_index;

