dobro :: Double -> Double
dobro x = x * 2

main :: IO ()
main = do
    print (dobro 4.5) -- Deve imprimir 9.0
