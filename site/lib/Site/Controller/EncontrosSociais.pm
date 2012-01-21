package Site::Controller::EncontrosSociais;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/enc_sociais')->to('encontros_sociais#index');
    
}

sub index {
    my $self = shift;
}


42;
