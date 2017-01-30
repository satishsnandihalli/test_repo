#!/usr/bin/perl

#Write a program which read an input file which has many  IP address
# (ex: 10.20.11.50) and write  only ip addresses in to another file.

print "Content-type: text/html\n\n";

open(DATA, "<input.txt") or die "Couldn't open file file.txt, $!";
open($output,">output.txt") || die "Couldn't open file file.txt, $!";

while(<DATA>){
   #print $output " $_";
  $line = $_;
  print "line : $line";
  @words = split / /, $line;
  $count = 0;
  foreach $word (@words)
  {
       print "word: $word \n";
       #if($word =~ /^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/ &&(($1<=255  && $2<=255 && $3<=255  &&$4<=255 )))
       if ($word =~ /(\D*)(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})(.*)/ )
       {
           print $output "$2";
           if ($count ne $#words){
                print $output ",";
           }
       }
       $count++;
  }
  print $output "\n";
}