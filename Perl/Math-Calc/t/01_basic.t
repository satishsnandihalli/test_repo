use strict;
use warnings;

use Test::More tests => 7;

use_ok 'Math::Calc';

is Math::Calc::add(19, 23), 42, 'add : good answer';
is Math::Calc::minus(20,10), 10, 'subtract : good answer';
is Math::Calc::mul(2,3), 6, 'multiply : good answer';
is Math::Calc::div(10,2), 5, 'divide : good answer';
isnt Math::Calc::mul(2,3), 7, 'multiply : -ve test case - good answer';
is Math::Calc::div(10,2), 4, 'divide : should fail';