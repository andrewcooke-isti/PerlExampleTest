use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'PerlExampleTest',
    license             => 'perl',
    dist_abstract       => 'PerlExampleTest short description',
    dist_author         => 'Author Name <email_addy@goes.here>',
    build_requires => {
        'Test::More' => '0.10',
    },
    );

$builder->create_build_script();
