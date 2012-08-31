package Site::Controller::EncontrosTecnicos;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/enc_tecnicos')->to('encontros_tecnicos#index');
    
}

sub index {
    my $self = shift;
}


return 42;
