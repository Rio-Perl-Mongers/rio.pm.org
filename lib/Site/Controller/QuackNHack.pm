package Site::Controller::QuackNHack;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/quack-and-hack')->to('quacknhack#index');

}

sub index {
    my $self = shift;
}


return 42;
