#Use Test::More module and test a calculator(+,-,/*) module implemented by you.
# The Module should be a ".pm" file and test script should be ".t" file. # CollapsedSubs: add  minus  mul  div
package Math::Calc;
use strict;
use warnings;

our $VERSION = '0.01';

sub add {
  return $_[0] + $_[1];
}
sub minus {
  return $_[0] - $_[1];
}
sub mul {
  return $_[0] * $_[1];
}
sub div {
  return $_[0] / $_[1];
}
1;