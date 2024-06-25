sobeDesce :: (Num t, Num t) => (t, t) -> (t, t)
sobeDesce (a, b) = (a + 1, b - 1)

main :: IO ()
main = do
    print (sobeDesce (10, 5))