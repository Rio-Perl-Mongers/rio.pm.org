package Site;
use Mojo::Base 'Mojolicious';


use Site::Loader;

# This method will run once at server start
sub startup {
    my $self = shift;

    # Routes Namespace
    $self->routes->namespace('Site::Controller');

    # Documentation browser under "/perldoc" (this plugin requires Perl 5.10)
    $self->plugin('PODRenderer');

    # Loading Modules
    my @core_modules = qw{  };
    Site::Loader::load( $self, @core_modules );
}

return 42;
