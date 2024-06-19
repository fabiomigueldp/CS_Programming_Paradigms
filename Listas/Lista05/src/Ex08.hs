trocaValor :: (a, b) -> (b, a)
trocaValor (a, b) = (b, a)

main :: IO ()
main = do
    print (trocaValor ('a', 'b')) 
