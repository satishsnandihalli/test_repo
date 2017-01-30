#!/usr/bin/perl
# Write a Recursive Subroutine to find a factorial of a number.
#Where the function accept input from User continuous until he
#provide a negative number.

print "Content-type: text/html\n\n";

sub fact
{
# Recursive factorial function

my $arg = shift;

if ($arg == 1 || $arg == 0)
{
return 1;
}

my $var = $arg * fact($arg - 1);

return $var;
}

# Dumb interface
$in = 0;
while (true)
{
print "Factorial of: ",;
my $in = <STDIN>;
if ($in >= 0){
     print fact($in);
}
else{
   exit();
}
}
exit();