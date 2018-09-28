#!/usr/bin/perl

#######
#test execution:perl test.pl ./rv8-dump.txt
#######
require Helperlib;

my $filename = $ARGV[0];
my $text_size = Helperlib::extract_text_section_size($filename);

if ($text_size != -1)
{
  print "text section size = $text_size\n";	
}
