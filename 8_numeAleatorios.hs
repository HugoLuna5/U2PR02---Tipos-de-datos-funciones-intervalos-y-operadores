import System.Random (randomRIO)

listaNĂºmerosAleatorios :: Int -> IO([Int])
listaNĂºmerosAleatorios 0 = return []
listaNĂºmerosAleatorios n = do
  r  <- randomRIO (1,9999999)
  rs <- listaNĂºmerosAleatorios (n-1)
  return (r:rs) 