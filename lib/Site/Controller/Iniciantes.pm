package Site::Controller::Iniciantes;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/iniciantes')->to('iniciantes#index');
    
}

sub index {
    my $self = shift;
}


return 42;
