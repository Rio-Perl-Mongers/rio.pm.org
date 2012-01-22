package Site::Controller::Regionais;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/regionais')->to('regionais#index');

}

sub index {
    my $self = shift;
}


return 42;
