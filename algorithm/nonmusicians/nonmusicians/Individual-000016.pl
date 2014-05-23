package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (4, 7, 4, 6, 4, 6, 5, 1);
  @n = map $_ % $nn, @n;
  if (!$seen->{whl}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[asynth(0.25, $n[$note % @n], $len, $spc, [8, 0.08829, 0.9856, 0, 0.782, 6, 3, 4, -(2/2), 3],  mseries([4, 0.9628, 0.2636, 0, 0.0207, 2, 7, 3, 8*5, 1/3], 3, 1, 0.9449), [1, 0.1277, 0.9985, 0, 0.7531, 3, 1*2*2*3, (6+8*2), 6*1, 2])];
    my ($note, $param, $len) = (2,5,nlen(4*(3/1)*(4/1)*(3/4)*(3/3)*(1/1)*(3/3)*(3/2)*(1/4)*(1/3)*(1/2)*(4/1)));
    my ($vol, $pan, $groove, $phase) = (0.09+0.08+0.1+0.09+0.15,0.6191,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (3,5,4*(8*(2+4)+7)*2,3);
    $l->dice(X,[1],[3,1,0,3,2,0,3,1],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }

  if (!$seen->{udq}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[end2end(resample(reverb(hipass(wah(asynth(0.125, $n[$note % @n], $len, $spc,  mseries([2, 0.9199, 0.01841, 2, 0.02426, 3, 6, 5, -(2/1), 1/4], 4, 7, 0.3525),  mseries([2, 0.2129, 0.1032, 0, 0.1325, 6, 5, 7, 4, 2], 1, 1, 0.007), [1, 0.337, 0.03598, 5*2, 0.7239, 4, 3, 4, -(4/1)*(4/1)*(2/4)*(1/3), 1/2], [3, 0.1322, 0.09106, 2*7, 0.8151, 5, 4, 8, 2, 1/3]),0.4915*(1),0.9953*0.4696,0.5),$hirad,$hicyc),0.5,1),$n[$note % @n]),asynth(0.25, $n[$note % @n], $len, $spc,  mseries([3, 0.3221, 0.2641, 7*7, 0.1342, (7+7*8), 1, (8+8), -(1/1), 1/4], 1, 3, 0.07931), [2, 0.7551, 0.1178, 3, 0.3795, 3, 4, (5+(2+3)), -(2/3), 1/4], [4, 0.9775, 0.338, 5, 0.9957, 5, 6, 8, 2, 1/4]))];
    my ($note, $param, $len) = (3,1,nlen(4*(3/1)*(3/2)));
    my ($vol, $pan, $groove, $phase) = (0.03+0.15+0.06+0.02+0.08,0.6,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (2,1*1,6,8);
    $l->dice(X,[1],[0],[1]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
