#!/usr/bin/perl

# remove duplicates from an array

print "Content-type: text/html\n\n";
print "<html><h1>Hello!</h1></html>\n";

@myarray = (1,2,"three", 3.14, "three", 2);
print "myarray: @myarray \n";

%unique = ();
foreach $item (@myarray) {
$unique{$item} ++;
}
@myuniquearray = keys %unique;

# items are not in same order.
print "myuniquearray: @myuniquearray \n";

exit();