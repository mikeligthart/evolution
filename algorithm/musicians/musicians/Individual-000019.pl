package Individual;

sub add_to_loop {
  my ($spc,$t,$s,$seen) = @_;
  my @n = (7, 1, 2*2, 1, 5, 8, 2*7);
  @n = map $_ % $nn, @n;
  if (!$seen->{rfs}++) {
  my $l = zeroes($t);

  if ('sequencer') {
    my $sound = q[wah(asynth(0.5, $n[$note % @n], $len, $spc,  mseries([2, 0.1025, 0.4774, 1*3, 0.9435, 5, 6, 7, 5, 3], 2, 5, 0.3434), [2, 0.1115, 0.8463, 1, 0.8633, (2+2)*3, 1, (8+7), ((1+6)+1), 1], [5, 0.08888, 0.3722, 4*(2*7+2), 0.9131, 2, 6, 6, -(4/3), 3],  mseries([5, 0.4612, 0.6088, 2*5*2, 0.2098, (4+3), 6, 4, -(3/1), 1], 2, 1, 0.282),  mseries([7, 0.1602, 0.5358, 0, 0.8935, 7, (8+2), 7, -(4/3), 1/4], 2, 4, 0.01219),  mseries([3, 0.1415, 0.8946, 0, 0.3936, 8, 2, 7, -(3/3), 1/2], 2, 1, 0.7379)),0.5556*(5*7*6),0.07263*0.04038,0.75)];
    my ($note, $param, $len) = (7,3,nlen(4*(3/2)));
    my ($vol, $pan, $groove, $phase) = (0.06+0.13+0.09+0.11+0.1,0.4,0,-2*3);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (1,7,5,7);
    $l->dice(X,[0],[2,0],X) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  }

  addlayer($s, $l, $spc);
  }

  if (!$seen->{cgr}++) {
  my $l = zeroes($t);

  if ('tune') {
    my $sound = q[asynth(0.25, $n[$note % @n], $len, $spc, [1, 0.9259, 0.02206, 4*7, 0.5121, 8, 6, 4, -(4/2)*(4/4)*(4/1)*(3/2), 2],  mseries([3, 0.5026, 0.2709, (5*((((3*6+(8+1))+7)+3)+3)*2+3)*1*8, 0.1598, 4, 5, 5, -(3/4), 1/3], 2, 3, 0.1484),  mseries([3, 0.03917, 0.7056, 6*3, 0.9167, 5, 2, 1, 3, 2], 2, 2, 0.0575))];
    my ($note, $param, $len) = (5,6,nlen(4*(2/2)));
    my ($vol, $pan, $groove, $phase) = (0.02+0.01+0.03+0.01+0.12,0.1353,-5,0);
    my ($lowrad, $lowcyc, $hirad, $hicyc) = (8,7*(5+6),1,2);
    my $remain=$l->nelem/5;
my $rest;
foreach(1..2){
 foreach my $ref([8, nlen(4*(4/1)), nlen(4*(4/4)*(4/3)*(3/4)*(3/3))]){
  ($note,$len,$rest) = @$ref;
  $l->dice(X,[0],[0],[0]) .= pdl([getsound(eval '"'.$sound.'"'),$vol,$pan,$groove,$phase]);
  $l=offset($l,-int($len+$rest));
  $remain-=$len+$rest;
 }
 last if($remain<0);
}
$l = offset($l,3*4*4+3*4+3);
  }

  addlayer($s, $l, $spc);
  }
}
