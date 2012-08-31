
use strict;
use warnings;
use inc::Module::Install;

name 'Site';
all_from 'lib/Site.pm';

requires 'Mojolicious' => 3.36;

test_requires 'Test::More' => 0.42;

license 'perl';

WriteAll;

