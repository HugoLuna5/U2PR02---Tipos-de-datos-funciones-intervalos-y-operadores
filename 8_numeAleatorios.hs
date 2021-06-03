import System.Random (randomRIO)

listaNúmerosAleatorios :: Int -> IO([Int])
listaNúmerosAleatorios 0 = return []
listaNúmerosAleatorios n = do
  r  <- randomRIO (1,9999999)
  rs <- listaNúmerosAleatorios (n-1)
  return (r:rs) 