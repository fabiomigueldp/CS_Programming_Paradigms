incremento :: Int -> Int
incremento x = x + 1

decremento :: Int -> Int
decremento x = x - 1

sobeDesce2 :: (Int, Int) -> (Int, Int)
sobeDesce2 (a, b) = (incremento a, decremento b)

main :: IO ()
main = do
    print (sobeDesce2 (10, 5)) 
