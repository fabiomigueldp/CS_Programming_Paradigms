main :: IO ()
main = do
    let x = -8
    print (negate x) -- Deve imprimir 8

{- Ele obteve um erro ao tentar usar negate -8 porque a expressão
 foi interpretada como negate (-) 8, o que não é válido.
 A maneira correta é usar parênteses: negate (-8) -}
