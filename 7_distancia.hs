distancia :: Floating c => [c] -> [c] -> c
distancia a=sqrt.sum.map((^2).uncurry(flip(-))).zip a