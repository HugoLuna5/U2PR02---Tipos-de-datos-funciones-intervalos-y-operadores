

import Data.List
cifras :: Integer -> [Int]
cifras n = [read [d] | d <- show n]

últimoDígitoDe x = last (cifras(x))