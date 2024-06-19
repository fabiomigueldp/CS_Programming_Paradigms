main :: IO ()
main = do
    let result1 = 2 ** 3 -- 2 
    let result2 = 0.2 ^ 3  -- 2 
    print (result1, result2)

-- Para valores inteiros, os operadores ** e ^ podem comportar-se de maneira semelhante.
-- No entanto, ** é usado para exponenciação em ponto flutuante e ^ é usado para inteiros.
