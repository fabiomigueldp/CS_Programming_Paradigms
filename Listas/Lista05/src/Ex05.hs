incremento :: Int -> Int
incremento x = x + 1

decremento :: Int -> Int
decremento x = x - 1

main :: IO ()
main = do
    print (decremento (incremento 9)) -- Deve imprimir 9
-- decremento (incremento 9) :: Num a => a
-- Isso indica que a função decremento aplicada após incremento de 9 
