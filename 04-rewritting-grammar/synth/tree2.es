set MaxObjects 20000

{ hue 30 sat 1 }SEED
{ ry 90 hue 30 sat 1 }SEED

rule SEED  {
 10 * { y 1   } sphere
 { y 10 rx 45 s 0.8 } SEED
 { y 10 rx -45 s 0.9 } SEED
 { y 10 rx  45 ry 55 s 0.8 } SEED
 { y 10 rx -45 ry -55 s 0.8 } SEED
}
