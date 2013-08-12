package Site::Routes;
use Mojo::Base -strict;

sub load {
    my ( $class, $route ) = @_;

    # error
    die "error with route instance!\n" 
        unless $route && $route->isa('Mojolicious::Routes');

    # custom routes
    my $custom = {
        '/quack-and-hack'     => 'home#quacknhack',
        '/desenvolvimento'    => 'home#desenvolvimento',
        '/FAQ'                => 'home#faq',
        '/quem_usa'           => 'home#quem_usa',
        '/quem-usa'           => 'home#quem_usa',              #best way
        '/mitos'              => 'home#mitos',
        '/iniciantes'         => 'home#iniciantes',
        '/diversao'           => 'home#diversao',
        '/lista'              => 'home#lista',
        '/enc_sociais'        => 'home#encontros_sociais',
        '/encontros-sociais'  => 'home#encontros_sociais',     #best way
        '/enc_tecnicos'       => 'home#encontros_tecnicos',
        '/encontros-tecnicos' => 'home#encontros_tecnicos',    #best way
        '/livros_e_resenhas'  => 'home#livros',
        '/livros-e-resenhas'  => 'home#livros',                #best way
        '/sobre'              => 'home#sobre',
        '/regionais'          => 'home#regionais',
        '/CPAN'               => 'home#cpan',
    };

    # add routes
    $route->any($_)->to( $custom->{$_} ) for keys %$custom;

    return $route;
}

1;

__END__

=pod

=head1 NAME

Site::Routes

=head1 DESCRIPTION

Classe responsável pela configuração de todas as rotas 
customizadas da aplicação.

Utilize esta classe sempre que necessário adicionar uma
nova rota neste site.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Routes>

=cut

