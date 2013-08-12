package Site;
use Mojo::Base 'Mojolicious';

use Site::Routes;

sub startup {
    my $self = shift;

    #$self->plugin('PODRenderer');

    # Router
    my $r = $self->routes;
    $r->namespaces( ['Site::Controller'] );

    # rota default
    $r->any('/')->to('home#index');

    # config rotas customizadas
    Site::Routes->load($r);

    # rotas genéricas controller/action
    $r->any('/:controller/:action/:id')
      ->to( controller => 'home', action => 'index', id => 0 );
}

1;
