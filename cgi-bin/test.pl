#!/usr/bin/perl
$|++;
use strict;
use FCGI;
use CGI qw();
use CGI::Session;

my $request = FCGI::Request();
while ( $request->Accept() >= 0 ) {
  my $session = new CGI::Session();
  my $id = CGI::param( 'id' );

  print $session->header();

  print "Hello world!\n";
  print "id=$id\n";
}


