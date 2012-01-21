package Site::Controller::FAQ;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/FAQ')->to('FAQ#index');

}

sub index {
    my $self = shift;
}


return 42;
