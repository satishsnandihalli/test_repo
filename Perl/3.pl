#!/usr/bin/perl

#Given a array of strings, reverse and store it in an array.
print "Content-type: text/html\n\n";
print "<html><h1>Hello!</h1></html>\n";

@arr = (1,2,3,4,5);

@revarr = reverse(@arr);

print "reverse of @arr is @revarr";