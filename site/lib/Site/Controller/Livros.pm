package Site::Controller::Livros;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/livros_e_resenhas')->to('livros#index');

}

sub index {
    my $self = shift;
}


return 42;
