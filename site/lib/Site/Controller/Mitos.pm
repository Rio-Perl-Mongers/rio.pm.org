package Site::Controller::Mitos;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/mitos')->to('mitos#index');

}

sub index {
    my $self = shift;
}


return 42;
