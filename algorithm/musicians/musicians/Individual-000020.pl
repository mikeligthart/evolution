package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (8, 7, 2, 4, 5*(3+4), 7*(6+2), 6, 6*6);
  @n = map $_ % $nn, @n;
  if (!$seen->{unh}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[hipass(hipass(asynth(0.125, $n[$note % @n], $len, $spc, [6, 0.1289, 0.7846, 2*(8+2)*4, 0.5761, 2, 1, 1*4*4*(3*5*3+6), (7+3), 2], [1, 0.1059, 0.238, 0, 0.1289, 7, 1, 5, -(2/1), 1],  mseries([7, 0.526, 0.1199, 8, 0.1757, 1, 3, 1, -(4/4), 1], 7, 8, 0.7149)),$hirad,$hicyc),$hirad,$hicyc)];
    my ($note, $param, $len) = (4,1,nlen(4*(4/3)*(4/4)));
    my ($vol, $pan, $groove, $phase) = (0.04+0.06+0.14+0.15+0.14,0.4,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (3,2*(3+8),6,2);
    $l->dice(X,[1],[2],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $lowcyc += -7;
    $l->dice(X,[0,0],[1,3,2],[2]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $len = nlen(4*(1/2));
    $l = offset($l, 3*4*4+3*4+2);
    $l->dice(X,[0,0],[1],[0,0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $hicyc += 5;
    $l->dice(X,[2],[0,1,0,2,0],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
    $len = nlen(4*(4/3));
    $note += -8;
    $pan *= 1.1;
    $l->dice(X,[3,1,0],X,X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
