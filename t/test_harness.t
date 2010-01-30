use Test::More tests => 2;

use Test::TestHarness;

my $pass = runtest("harness_tests", "pass");
is($pass->status, "PASS");

my $fail = runtest("harness_tests", "fail");
is($fail->status, "FAIL");
