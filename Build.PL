use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::TestHarness',
    license             => 'perl',
    dist_author         => 'Ryan Niebur <ryanryan52@gmail.com>',
    dist_version        => '0.01',
    dist_abstract       => 'Run (test) tests from within tests to test if they suceed or fail',
    requires => {
          'TAP::Harness' => 0,
          'TAP::Parser::Aggregator' => 0
        },
    build_requires => {},
    add_to_cleanup      => [ 'Test-TestHarness-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
