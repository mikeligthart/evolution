package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (7*7*6, 6, (3+4), 8, 7*7*6*6, 4, 2, 2);
  @n = map $_ % $nn, @n;
  if (!$seen->{zes}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[lowpass(asynth(1, $n[$note % @n], $len, $spc,  mseries([4, 0.5167, 0.5926, 3, 0.7448, 6*(7+8)*4*3, 6, 4, -(2/3), 1/2], 1, 6, 0.3514), [1, 0.7784, 0.9091, 8, 0.6808, 1, 5, 4*2, 2*2*3, 2],  mseries([4, 0.5167, 0.5926, 3, 0.7448, 6*4*2, 6, 4, -(2/3), 1/2], 1, 6, 0.2817), [3, 0.7784, 0.9091, (3+6), 0.8357, 4, 5, 4*2, 6*4*2, 2]),$lowrad,$lowcyc)];
    my ($note, $param, $len) = (7,6,nlen(4*(3/1)));
    my ($vol, $pan, $groove, $phase) = (0.04+0.14+0.11+0.09+0.13,0.6747,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (6,(3+4)*4,5,(3+4));
    $l->dice(X,[2],[2,2],[2]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $vol *= 0.95;
    $l->dice(X,[1],[1,3,2],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
