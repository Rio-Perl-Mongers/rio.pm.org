package Site::Controller::Home;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/')->to('home#index');
    
}

sub index {
    my $self = shift;
}


return 42;
