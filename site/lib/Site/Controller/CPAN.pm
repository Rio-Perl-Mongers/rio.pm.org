package Site::Controller::CPAN;

use Mojo::Base 'Mojolicious::Controller';

sub startup {
    my ( $self, $c ) = @_;

    my $r = $c->routes;

    $r->route('/CPAN')->to('CPAN#index');

}

sub index {
    my $self = shift;
}


return 42;
