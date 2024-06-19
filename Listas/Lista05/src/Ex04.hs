incremento :: Int -> Int
incremento x = x + 1

decremento :: Int -> Int
decremento x = x - 1

main :: IO ()
main = do
    print (incremento 5) -- Deve imprimir 6
    print (decremento 5) -- Deve imprimir 4
