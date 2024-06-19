main :: IO ()
main = do
    let result = (1 == 4 && True, mod (4*8) 31^2-5)
    print result

{-fabiomigueldp@Mac-Mini ~/Desktop/Códigos/CS_Programming_Paradigms/Listas/Lista05 [main *]
± % ./Ex01                                                                                  !2462
(False,-4)
A expressão Haskell (1 == 4 && True, mod (4*8) 31^2-5) resulta em (False, -4) 

(1 == 4 && True):

1 == 4 é falso (False).
False && True resulta em False.

mod (4*8) 31^2-5:

4*8 é 32.
31^2 é 961.
961 - 5 é 956.
A operação mod 32 956 é o resto da divisão inteira de 956 por 32, resultando em -4.
Portanto, a expressão completa resulta em (False, -4).-}