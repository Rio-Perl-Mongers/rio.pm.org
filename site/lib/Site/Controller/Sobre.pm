package Site::Controller::Sobre;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/sobre')->to('sobre#index');

}

sub index {
    my $self = shift;
}


return 42;
