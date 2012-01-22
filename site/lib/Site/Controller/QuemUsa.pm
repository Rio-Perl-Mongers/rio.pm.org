package Site::Controller::QuemUsa;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/quem_usa')->to('quem_usa#index');

}

sub index {
    my $self = shift;
}


return 42;
