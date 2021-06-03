import Data.Char
import Data.List

type WordNum = String


numberToName :: (Integral a, Ord a) => a -> WordNum
numberToName n 
  | n >= 0 && n < 10 = onsies !! fromIntegral n
  | otherwise       = error $ "numberToName: no es un valor de un dígito en el rango permitido"
  where
    onsies = words "cero uno dos tres cuatro cinco seis siete ocho nueve"
