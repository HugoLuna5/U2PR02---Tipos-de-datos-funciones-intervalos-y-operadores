import System.IO
import System.Exit
import Control.Monad
import ultimoDig


funcionIntegradoraU2PR2 = forever (printMenu >> readChoice >>= menuAction)

printMenu = putStr "\n1)Ejercicio 01: Último dígito de un número'\n2)Ejercicio 02: Máximo de tres números\n3)Ejercicio 03: Área de un trapecio\n4)Ejercicio 04: Paridad\n5)Ejercicio 05: Números positivos, negativos y nulos\n6)Ejercicio 06: Cuadrante de un punto\n7)Ejercicio 07: Distancia entre dos puntos\n8)Ejercicio 08: Lista de números aleatorios\n9)Ejercicio 09: Raíz cuadrada exacta\n10)Ejercicio 10: Comparativa de información\n11)Ejercicio 11: De número a nombre del número\n12)Ejercicio 12: Generador de enumeración de letras\n13)Ejercicio 13: Ordenar caracteres de texto/palabras\ntu elección: " >> hFlush stdout

readChoice = hSetBuffering stdin NoBuffering >> hSetEcho stdin False >> getChar

menuAction '1' = últimoDígitoDe
menuAction '2' = exitSuccess
menuAction '3' = exitSuccess
menuAction '4' = exitSuccess
menuAction '5' = exitSuccess
menuAction '6' = exitSuccess
menuAction '7' = exitSuccess
menuAction '8' = exitSuccess
menuAction '9' = exitSuccess
menuAction 'A' = exitSuccess
menuAction 'B' = exitSuccess
menuAction 'C' = exitSuccess
menuAction 'D' = exitSuccess
menuAction _ = hPutStrLn stderr "\nElección inválida."
