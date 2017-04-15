package Site::Controller::Base;
use Mojo::Base 'Mojolicious::Controller';

sub is_post {
    return (shift)->req->method eq 'POST' ? 1 : 0;
}

sub http_method {
    return (shift)->req->method;
}

1;

__END__

=pod

=head1 NAME

Site::Controller::Base

=head1 DESCRIPTION

Classe base para todos os controllers da aplicação.

Nesta classe deve ser implementados métodos comuns e que serão 
utilizados e devem ser herdados por todos os Controllers.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Controller>

=cut
