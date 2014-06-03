use strict;
use warnings;
use Test::More qw(no_plan);

# Verify module can be included via "use" pragma
BEGIN { use_ok('PerlExampleTest') };

# Verify module can be included via "require" pragma
require_ok( 'PerlExampleTest' );

# Test hello() routine using a regular expression
my $helloCall = PerlExampleTest::hello();
like($helloCall, qr/Hello, .*World/, "hello() RE test");

# Test hello_message() routine using a got/expected routine
is($helloCall, "Hello, Perl Build World!", "hello() IS test");

# Do not test bye() routine

# Test repeat() routine using a got/expected routine
for (my $ctr=1; $ctr<=10; $ctr++) {
    my $repeatCall = PerlExampleTest::repeat();
    is($repeatCall, 1, "repeat() IS test");
}

# Test argumentTest() 
my $argumentTestCall1 = PerlExampleTest::argumentTest();
is($argumentTestCall1, "null", "argumentTest() IS null test");

# Test argumentTest("true") 
my $argumentTestCall2 = PerlExampleTest::argumentTest("true");
is($argumentTestCall2, "true", "argumentTest() IS true test");

# Test argumentTest("false") 
my $argumentTestCall3 = PerlExampleTest::argumentTest("false");
is($argumentTestCall3, "false", "argumentTest() IS false test");

# Test argumentTest(123) 
my $argumentTestCall4 = PerlExampleTest::argumentTest(123);
is($argumentTestCall4, "unknown", "argumentTest() IS unknown test");
