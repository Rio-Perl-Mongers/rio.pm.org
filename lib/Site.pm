package Site;
use Mojo::Base 'Mojolicious';


use Site::Loader;

# This method will run once at server start
sub startup {
    my $self = shift;

    # Routes Namespace
    $self->routes->namespaces(['Site::Controller']);

    # Documentation browser under "/perldoc" (this plugin requires Perl 5.10)
    $self->plugin('PODRenderer');
    $self->plugin('Config');
    # Loading Modules
    my @core_modules = qw{
        Home
        Iniciantes
        EncontrosSociais
        EncontrosTecnicos
        Sobre
        FAQ
        QuemUsa
        Mitos
        Lista
        Desenvolvimento
        CPAN
        Livros
        Diversao
        Regionais
        QuackNHack
    };
    Site::Loader::load( $self, @core_modules );
}

return 42;
