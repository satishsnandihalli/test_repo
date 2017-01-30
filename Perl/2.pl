#!/usr/bin/perl
#Create a program which do all the array operations push/pop/shift/unshift.
print "Content-type: text/html\n\n";
print "<html><h1>Hello!</h1></html>\n";

@array = (1,2,3,4);
print "initial array: @array \n";

$ele = 5;
push(@array, $ele);
print "after pushing $ele : @array \n";

$ele = pop(@array);
print "after poping $ele : @array \n";

$ele = shift(@array);
print "after shift $ele : @array \n";

$ele = 0;
unshift(@array, $ele);
print "after unshift $ele : @array \n";
