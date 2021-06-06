import Data.List

ordenarCarTexto = do
    let strs = "Luna"
    print strs
    let orderF = sort strs
    let orderS = reverse orderF
    let first = head orderS
    print ['a' .. first]