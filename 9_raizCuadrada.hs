import System.Random (randomRIO)

--Calculate raiz cuadrada
isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

--Verify perfect square root
is_square x = sq * sq == x
    where sq = floor $ sqrt $ (fromIntegral x::Double)


--Generate list of values and print if is perfect square root
    -- Structure
    -- Number 
    -- square root if is perfect else print zero
        --Example
        -- 64
        -- 8
        --Another Example
        -- 28
        -- 0

raízCuadradaExacta 0 = return []
raízCuadradaExacta n = do
  r  <- randomRIO (1,65)
  rs <- raízCuadradaExacta (n-1)
  print(r)
  if is_square(r)
      then print(isqrt(r))
      else  print 0
   
  return (r:rs) 



