package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (8, 4, ((4*(5+2)+8*5)+3), 7, 4, 4*2);
  @n = map $_ % $nn, @n;
  if (!$seen->{klw}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[asynth(4, $n[$note % @n], $len, $spc,  mseries([5, 0.5424, 0.8142, 8*2, 0.06669, (3+3)*3, (1+3)*3, 5, -(2/1)*(4/4), 1], 3, 2, 0.3523),  mseries([2, 0.1664, 0.2182, 7*5, 0.5628, 2, 2, 6, 8, 1], 2, 2, 0.737), [1, 0.2634, 0.36, 0, 0.1493, 1, 6, (4+(1+7*2)), 2*1*3, 4],  mseries([2, 0.1638, 0.4229, 4, 0.2619, 7*4*8, 3*2, 4, 6, 1], 2, 1, 0.7782))];
    my ($note, $param, $len) = (2*3,8,nlen(4*(3/2)));
    my ($vol, $pan, $groove, $phase) = (0.09+0.02+0.09+0.03+0.13,0.7192,0,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (7,(8+8),2,(3+2));
    $l->dice(X,[1],X,X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }
}
