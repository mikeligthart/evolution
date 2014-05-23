package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (7, 1, 7, 6, (6+2), 1, 1, 7);
  @n = map $_ % $nn, @n;
  if (!$seen->{epr}++) {
  my $l = zeroes($t);

  if ('tune') {
    my $sound = q[combine(asynth(0.5, $n[$note % @n], $len, $spc, [10, 0.8039, 0.4438, 0, 0.8164, 6, 4, 5, 3, 1], [1, 0.3319, 0.4566, 0, 0.3021, 3*7, 4, 6, 4, 3],  mseries([2, 0.1865, 0.4436, 0, 0.2643, 1, (7+1), 2*5, -(4/3), 1/2], 1, 2, 0.863),  mseries([6, 0.8136, 0.4125, 0, 0.4003, 7, 5*1, 1, 8, 4], 3, 1, 0.4635), [1, 0.1071, 0.3569, 2*1, 0.9553, (4+3), 5*1, 4, 3, 1/2], [1, 0.07986, 0.04603, 6, 0.9896, 2, 7*1, 2*8, 6, 1/3],  mseries([1, 0.2432, 0.1758, (1+4), 0.439, 4, 5, 1, (4+8), 1], 6, 1, 0.1583)),asynth(0.5, $n[$note % @n], $len, $spc, [10, 0.8039, 0.4438, 0, 0.8164, 6, 4, 5, 3, 1], [1, 0.3319, 0.4566, 0, 0.3021, 3*7, 4, 6, 4, 3], [2, 0.1533, 0.9093, 0, 0.4331, 8, 3, 5, (8+3), 1], [2, 0.4767, 0.4922, 0, 0.7994, (5+4), 6*(6+7*6), 4, -(4/3), 4], [4, 0.1175, 0.6993, 0, 0.2431, 2, 6*7*5, 1, 3*2*1, 1/3]),0.13+0.04+0.04+0.14+0.02)];
    my ($note, $param, $len) = (1,3,nlen(4*(3/4)));
    my ($vol, $pan, $groove, $phase) = (0.11+0.15+0.14+0.01+0.07,0.05536,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (5,(5+5),(4+8),1);
    my $remain=$l->nelem/5;
my $rest;
foreach(1..1){
 foreach my $ref([4, nlen(4*(2/4)), 0], [(3+4*4*2), nlen(4*(3/1)), 0], [4, nlen(4*(4/1)), 0], [4, nlen(4*(2/1)), nlen(4*(4/3))]){
  ($note,$len,$rest) = @$ref;
  $l->dice(X,[0],[0],[0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  $l=offset($l,-int($len+$rest));
  $remain-=$len+$rest;
 }
 last if($remain<0);
}
$l = offset($l,3*4*4+1*4+0);
  }

  addlayer($s, $l, $spc);
  }
}
