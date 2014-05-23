package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (4, 1, (2+1), 5, 7, 3, 3, 3, ((6+1)+(3+2))*5, (5+8));
  @n = map $_ % $nn, @n;
  if (!$seen->{rdg}++) {
  my $l = zeroes($t);

  if ('tune') {
    my $sound = q[wah(asynth(0.25, $n[$note % @n], $len, $spc,  mseries([3, 0.7311, 0.5938, 0, 0.5398, 2, 7, 1, -(3/4), 1/2], 2, 7, 0.8352), [4, 0.5167, 0.5926, 3, 0.7448, 6*4*2, 6, 4, -(2/3), 1/2],  mseries([2, 0.1044, 0.3656, 7, 0.4218, 2, ((2+7)+2)*7, 7, -(1/1), 1/4], 4, 1, 0.9352), [1, 0.3476, 0.4994, 0, 0.03956, 1, (1+1), 3, 2, 1]),0.8367*(5),0.6388*0.02978,0.75)];
    my ($note, $param, $len) = (1*5*3,6,nlen(4*(3/2)));
    my ($vol, $pan, $groove, $phase) = (0.13+0.02+0.08+0.1+0.09,0.4,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (8,7,6,1);
    my $remain=$l->nelem/5;
my $rest;
foreach(1..2){
 foreach my $ref([2, nlen(4*(1/4)), nlen(4*(2/2))], [3, nlen(4*(4/4)), 0]){
  ($note,$len,$rest) = @$ref;
  $l->dice(X,[0],[0],[0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  $l=offset($l,-int($len+$rest));
  $remain-=$len+$rest;
 }
 last if($remain<0);
}
$l = offset($l,2*4*4+0*4+3);
  }

  addlayer($s, $l, $spc);
  }

  if (!$seen->{qah}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[wah(asynth(0.25, $n[$note % @n], $len, $spc,  mseries([4, 0.5167, 0.5926, 3, 0.7448, 6*4*2, 6, 4, -(2/3), 1/2], 1, 6, 0.2817), [4, 0.5167, 0.5926, 3, 0.7448, 6*4*2, 6, 4, -(2/3), 1/2],  mseries([2, 0.1044, 0.3656, 7, 0.4218, 2, (7+2)*7, 7, -(1/1), 1/4], 4, 1, 0.9352),  mseries([4, 0.5167, 0.5926, 3, 0.7448, 6*4*2, 6, 4, -(2/3), 1/2], 1, 6, 0.2817)),0.8367*(5),0.6388*0.02978,0.75)];
    my ($note, $param, $len) = (7,7,nlen(4*(2/2)));
    my ($vol, $pan, $groove, $phase) = (0.01+0.01+0.08+0.01+0.13,0.5,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (4,4,6*3,7);
    $l->dice(X,[2,2,0,1,3],[1],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $len = nlen(4*(1/3)*(1/1));
    $l->dice(X,[2,2,0,1,3],[1],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $hicyc += -7;
    $l->dice(X,[1,3,3],[1],[2]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $lowrad += 7;
    $l->dice(X,[1],X,X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
