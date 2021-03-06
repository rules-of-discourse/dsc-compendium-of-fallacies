
# Copyright (c) 2018 - Sophia Elizabeth Shapira
# This script is licensed under the terms of the GNU General
# Public License version 2.0 or later.

use strict;

my @arglist;
my $srcfile;
my $rcpfile;
my $outfile;
my $prefixa;
my $cont_before;
my $cont_after;
my $section_title;
my $abrstate; # 'pub' / 'dev' / 'full'
my @abrhide;

@arglist = @ARGV;
if ( &counto(@arglist) < 4.5 )
{
  die "\nNot Enough Arguments:\n";
}
sub counto {
  my $lc_a;
  $lc_a = @_;
  return $lc_a;
}
sub bsc {
  my $lc_ret;
  my $lc_src;
  my $lc_chr;
  $lc_src = scalar reverse $_[0];
  $lc_ret = "\'";
  while ( $lc_src ne "" )
  {
    $lc_chr = chop($lc_src);
    if ( $lc_chr eq "\'" ) { $lc_chr = "\'\"\'\"\'"; }
    $lc_ret .= $lc_chr;
  }
  $lc_ret .= "\'";
  return $lc_ret;
}

$abrstate = shift(@arglist);
$srcfile = shift(@arglist);
$rcpfile = shift(@arglist);
$outfile = shift(@arglist);
$prefixa = shift(@arglist);

@abrhide = ();
if ( $abrstate eq 'pub' )
{
  @abrhide = ('<!-- defunct -->','<!-- inprep -->');
}
if ( $abrstate eq 'dev' )
{
  @abrhide = ('<!-- defunct -->');
}

# Here we extract the contents of the source file
{
  my $lc_cm;
  my $lc_con;
  my $lc_sga; my $lc_sgb;
  $lc_cm = 'cat ' . &bsc($srcfile);
  $lc_con = `$lc_cm`;
  ($cont_before,$cont_after) = split(quotemeta("<!-- tocx -->"),$lc_con,2);
  ($lc_sga,$lc_sgb) = split(quotemeta('<title>'),$lc_con);
  ($section_title,$lc_sga) = split(quotemeta('</title>'),$lc_sgb);
}



open OUTPOT,('| cat > ' . &bsc($outfile));
open RCPFIL,('| cat >> ' . &bsc($rcpfile));

print OUTPOT $cont_before;
print OUTPOT "<div class = \"sublbod\">\n";

print RCPFIL 'text:' . $prefixa . $outfile . "\n";
print RCPFIL 'cont:2:*:' . $section_title . "\n";
{
  my $lc_fl;
  foreach $lc_fl (@arglist) { &foreachfile($lc_fl); }
}
sub foreachfile {
  my $lc_cm;
  my $lc_con;
  my $lc_sga;
  my $lc_sgb;
  my $lc_ttl;
  if ( ! ( -f $_[0] ) ) { return; }
  $lc_cm = 'cat ' . &bsc($_[0]);
  $lc_con = `$lc_cm`;
  ($lc_sga,$lc_sgb) = split(quotemeta('<title>'),$lc_con);
  ($lc_ttl,$lc_sga) = split(quotemeta('</title>'),$lc_sgb);

  # And here we make sure that none of the flagged strings
  # are out and about.
  foreach $lc_sga (@abrhide)
  {
    ($lc_sgb) = split(quotemeta($lc_sga),$lc_con);
    if ( $lc_sgb ne $lc_con )
    {
      #print "REJECT: " . $_[0] . ': ' . $lc_sga . "\n";
      #sleep(10);
      return;
    }
  }

  print RCPFIL 'text:' . $prefixa . $_[0] . "\n";
  print RCPFIL 'cont:3:*:' . $lc_ttl . "\n";
  print OUTPOT "\n<div class = \"tocitem\">";
  print OUTPOT "<a href = \"" . $_[0] . "\">";
  print OUTPOT $lc_ttl;
  print OUTPOT "</a>";
  print OUTPOT "</div>\n";
}

print OUTPOT "</div>\n";
print OUTPOT $cont_after;

close OUTPOT;
close RCPFIL;







