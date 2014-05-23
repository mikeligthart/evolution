package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (3, 7, 1*1, 4, 5);
  @n = map $_ % $nn, @n;
  if (!$seen->{vyl}++) {
  my $l = zeroes($t);

  if ('tune') {
    my $sound = q[lowpass(asynth(2, $n[$note % @n], $len, $spc,  mseries([1, 0.5644, 0.9833, 6, 0.2957, 7, 5*6, 5*5*2*4*(7+7)*7, 2, 2], 1, 1, 0.9433),  mseries([4, 0.4851, 0.2151, 7, 0.2886, 2, 8, 8, -(4/1)*(3/2)*(3/4), 1/3], 5, 2, 0.6821), [6, 0.04631, 0.2449, 0, 0.6955, 2, (6+6), 3, -(3/4)*(3/1), 4],  mseries([1, 0.3653, 0.9836, 0, 0.7878, 5, 5, 2, 4, 4], 1, 2, 0.2223), [2, 0.5729, 0.8856, 3, 0.6206, 4, 6, 5, 4, 1],  mseries([3, 0.4829, 0.3371, (6+(4+2*3)), 0.8932, 8, 1, (4+((6+5)+3*1)), 6, 1], 1, 2, 0.9962), [1, 0.9025, 0.7426, 7, 0.4364, 5, 8, (4+2), 5, 1], [8, 0.9225, 0.8462, 3*4, 0.2581, 8, 3, 4, 7, 1/2], [6, 0.9039, 0.4677, 0, 0.1595, 6, 1, 4, 5, 1]),$lowrad,$lowcyc)];
    my ($note, $param, $len) = (2,7,nlen(4*(4/1)));
    my ($vol, $pan, $groove, $phase) = (0.1+0.07+0.02+0.1+0.1,0.4,0,3);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (3,6,7,3);
    my $remain=$l->nelem/5;
my $rest;
foreach(1..3){
 foreach my $ref([5, nlen(4*(4/3)), nlen(4*(1/4))], [6, nlen(4*(4/1)), 0], [2*3, nlen(4*(1/2)*(4/2)), 0], [8, nlen(4*(4/1)), 0], [7, nlen(4*(1/3)), 0]){
  ($note,$len,$rest) = @$ref;
  $l->dice(X,[0],[0],[0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  $l=offset($l,-int($len+$rest));
  $remain-=$len+$rest;
 }
 last if($remain<0);
}
$l = offset($l,0*4*4+3*4+3);
  }

  addlayer($s, $l, $spc);
  }
}
