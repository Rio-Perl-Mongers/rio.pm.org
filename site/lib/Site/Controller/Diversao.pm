package Site::Controller::Diversao;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/diversao')->to('diversao#index');

}

sub index {
    my $self = shift;
}


return 42;
