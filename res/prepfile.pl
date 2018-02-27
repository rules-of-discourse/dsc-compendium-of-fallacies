use strict;

my @arglist;
my $srcfile;
my $rcpfile;
my $outfile;
my $prefixa;
my $cont_before;
my $cont_after;

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

$srcfile = shift(@arglist);
$rcpfile = shift(@arglist);
$outfile = shift(@arglist);
$prefixa = shift(@arglist);


# Here we extract the contents of the source file
{
  my $lc_cm;
  my $lc_con;
  $lc_cm = 'cat ' . &bsc($srcfile);
  $lc_con = `cat $lc_cm`;
  ($cont_before,$cont_after) = split(quotemeta("<!-- tocx -->"),$lc_con,2);
}



open OUTPOT,('| cat > ' . &bsc($outfile));
open RCPFIL,('| cat >> ' . &bsc($rcpfile));

print OUTPOT $cont_before;
print OUTPOT "<div class = \"sublbod\">\n";

print RCPFIL $prefixa . $outfile . "\n";
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

  print RCPFIL $prefixa . $_[0] . "\n";
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







