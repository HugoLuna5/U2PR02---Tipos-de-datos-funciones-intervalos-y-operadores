import System.Random

randoms' :: (RandomGen g, Random a) => g -> [a]
randoms' g = x : randoms' g'
  where (x, g') = random g

finitaAleatoria :: (RandomGen g, Random a, Num n, Eq n) => n -> g -> ([a], g)
finitaAleatoria 0 g = ([], g)
finitaAleatoria n g = (x:xs, g2)
  where (x, g1)  = random g
        (xs, g2) = finitaAleatoria (n-1) g1