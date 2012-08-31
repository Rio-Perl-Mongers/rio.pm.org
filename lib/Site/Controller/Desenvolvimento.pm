package Site::Controller::Desenvolvimento;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/desenvolvimento')->to('desenvolvimento#index');

}

sub index {
    my $self = shift;
}


return 42;
