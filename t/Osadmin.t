# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Osadmin.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 3;
BEGIN { use_ok('Osadmin') };

my $osa = Osadmin->new();

cmp_ok ($osa->test_cpp('122'), '==', 3,    'test cpp code');
cmp_ok ($osa->test_perl_sub(), 'eq', 'ok', 'test perl code');


#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

