package Site::Controller::Lista;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/lista')->to('lista#index');

}

sub index {
    my $self = shift;
}


return 42;
