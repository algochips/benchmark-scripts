#!/usr/bin/perl

package Helperlib;

##
#Arguments:filename with path
##
sub extract_text_section_size {
	my $filename = $_[0];
	my $row;
	my $fh;
	my $text_section_found = 0;
	
	open($fh, '<:encoding(UTF-8)', $filename)
	      or die "Could not open file '$filename' $!";
	     
	while ($row = <$fh>) {
	  chomp $row;
	  my @fields = split('] ', $row);
	  my $search_text = "text";
	  my @sub_fields;
	  
	  @sub_fields = split('\ ', $fields[1]);
	
	  if ($sub_fields[0] eq $search_text) {
	    return $sub_fields[5];
	  } 
	}
	if ($text_section_found == 0) {
		print "text section NOT found\n";
		return -1;
	}	
}
1;