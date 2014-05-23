package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (7, 5, 1, 2, 4);
  @n = map $_ % $nn, @n;
  if (!$seen->{iwb}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[asynth(1, $n[$note % @n], $len, $spc, [6, 0.9494, 0.5608, 0, 0.8504, (2*8+5)*7, (2+1), 7, 7, 1],  mseries([4, 0.5611, 0.359, (1+3)*5*2*(8+5), 0.8175, 6, 2, 6, -(1/4), 1/4], 1, 3, 0.7344), [2, 0.9244, 0.6018, 0, 0.9283, 5, 2, (4+7)*5, 8, 1])];
    my ($note, $param, $len) = (1,6,nlen(4*(3/4)*(2/2)*(2/3)*(3/2)));
    my ($vol, $pan, $groove, $phase) = (0.07+0.07+0.14+0.01+0.12,0.5231,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (6,(4+6)*6,1,2);
    $l->dice(X,[3,1],X,X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }

  if (!$seen->{mbr}++) {
  my $l = zeroes($t);

  if ('tune') {
    my $sound = q[asynth(4, $n[$note % @n], $len, $spc,  mseries([2, 0.2429, 0.2415, 0, 0.3445, 6, 5, 6, -(1/1), 1], 5, 1, 0.7549),  mseries([4, 0.844, 0.2905, 0, 0.6515, 3, 1, (8+((2+4)*(2+4)*7+3))*3*5*6, (3+7)*8, 1/3], 3, 2, 0.8253),  mseries([1, 0.1098, 0.9042, 7, 0.1906, 2*6, 1*(3+6)*3, 4, -(4/4), 1], 1, 4, 0.3633))];
    my ($note, $param, $len) = (7,3,nlen(4*(3/2)*(2/2)));
    my ($vol, $pan, $groove, $phase) = (0.06+0.01+0.01+0.08+0.04,0.963,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (8,7*5*6,(4+2),7);
    my $remain=$l->nelem/5;
my $rest;
foreach(1..5){
 foreach my $ref([2, nlen(4*(3/2)*(3/1)*(1/1)*(4/4)), nlen(4*(4/2)*(2/3)*(2/4)*(2/3))]){
  ($note,$len,$rest) = @$ref;
  $l->dice(X,[0],[0],[0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  $l=offset($l,-int($len+$rest));
  $remain-=$len+$rest;
 }
 last if($remain<0);
}
$l = offset($l,2*4*4+0*4+1);
  }

  addlayer($s, $l, $spc);
  }

  if (!$seen->{iwa}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[reverb(asynth(2, $n[$note % @n], $len, $spc,  mseries([2, 0.4678, 0.2004, 0, 0.1468, 1, 7, 2*4, 5, 1], 1, 6, 0.1739), [7, 0.5464, 0.6389, 0, 0.2359, 5, 1*3*5, 3, 7*5, 2]),1,3)];
    my ($note, $param, $len) = ((1+6),2,nlen(4*(1/3)*(2/1)));
    my ($vol, $pan, $groove, $phase) = (0.07+0.15+0.05+0.11+0.04,0.03008,0,-(5+(5+((5+(7+(3+(5+(4+1))*7))*2)+1)*2)));
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (7,5,6,1*7*1);
    $l->dice(X,[0],[3],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
