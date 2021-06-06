module Digito where

import Data.List
cifras :: Integer -> [Int]
cifras n = [read [d] | d <- show n]

ultimoDigitoDe x = last (cifras(x))