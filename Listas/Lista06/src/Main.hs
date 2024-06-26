import Data.Char (toUpper)
import Control.Exception (catch, SomeException)

-- 1. Função para calcular a área de uma circunferência
areaCircunferencia r = pi * r^2

-- Exemplo de teste utilizando let
testAreaCircunferencia = let r = 5 in areaCircunferencia r

-- 2. Função para identificar o tipo de triângulo
tipoTriangulo a b c
  | a + b <= c || a + c <= b || b + c <= a = "NAOTRI"
  | a == b && b == c = "Equilátero"
  | a == b || a == c || b == c = "Isósceles"
  | otherwise = "Escaleno"

-- 3. Função recursiva para multiplicação sem usar operador *
multiplica :: (Num a, Ord a) => a -> a -> a
multiplica _ 0 = 0
multiplica x y
  | y > 0     = x + multiplica x (y - 1)
  | y < 0     = - multiplica x (-y)

-- 4. Função recursiva para multiplicação de naturais sem usar operador *
multiplicaNaturais _ 0 = 0
multiplicaNaturais x y = x + multiplicaNaturais x (y - 1)

-- 5. Funções menor e maior
menor :: Ord a => a -> a -> a -> a
menor x y z = min x (min y z)

maior :: Ord a => a -> a -> a -> a
maior x y z = max x (max y z)

-- 5. EXTRA
maior' :: Ord a => a -> a -> a -> a
maior' x y z = case filter (/= menor x y z) [x, y, z] of
  []    -> menor x y z
  (m:[]) -> m
  (m:xs) -> max m (head xs)

-- 6. Função XOR
xor :: Bool -> Bool -> Bool
xor a b = (a || b) && not (a && b)

-- 7. Função para clonar números em uma lista
clonaNumeros :: [a] -> [a]
clonaNumeros [] = []
clonaNumeros (x:xs) = x : x : clonaNumeros xs

-- 8. Função para somar os dois primeiros valores de uma lista
somaDoisPrimeiros :: Num a => [a] -> a
somaDoisPrimeiros (x:y:_) = x + y
somaDoisPrimeiros _ = 0

-- 9. Função para criar lista de 0 até valor absoluto do número
listaAteAbs :: Int -> [Int]
listaAteAbs n = [0..abs n]

-- 10. Função parOuImpar
parOuImpar :: [Int] -> [Bool]
parOuImpar = map even

-- 11. Função soPar
soPar :: [Int] -> [Int]
soPar = filter even

-- 12. Função soMinusculas
soMinusculas :: String -> String
soMinusculas = filter (`elem` ['a'..'z'])

-- 13. Função substituiVogais
substituiVogais :: String -> String
substituiVogais = map (\c -> if c `elem` "aeiou" then toUpper c else c)

-- 14. Função para adicionar "Friboi" a cada string em uma lista
adicionaFriboi :: [String] -> [String]
adicionaFriboi = map (++ " Friboi")

-- 15. Função pertence
pertence :: Eq a => a -> [a] -> Bool
pertence _ [] = False
pertence y (x:xs) = (y == x) || pertence y xs

-- 16. Função filtraLista
filtraLista :: Eq a => [a] -> [a]
filtraLista [] = []
filtraLista (x:xs) = x : filtraLista (filter (/= x) xs)

-- 17. Função que retorna os n primeiros elementos de uma lista
primeirosN :: Int -> [a] -> [a]
primeirosN _ [] = []
primeirosN n (x:xs)
  | n > 0 = x : primeirosN (n-1) xs
  | otherwise = []

-- 18. Lista com múltiplos de 3 de 0 a 300
multiplosDe3 :: [Int]
multiplosDe3 = [x | x <- [0..300], x `mod` 3 == 0]

-- Função para exibir o menu
menu :: IO ()
menu = do
  putStrLn "Escolha um exercício para executar (1-18) ou digite 0 para sair:"
  putStrLn "1. Calcular a área de uma circunferência"
  putStrLn "2. Identificar o tipo de triângulo"
  putStrLn "3. Multiplicação recursiva (sem usar *)"
  putStrLn "4. Multiplicação de naturais (sem usar *)"
  putStrLn "5. Menor e maior valor"
  putStrLn "6. XOR (ou exclusivo)"
  putStrLn "7. Clonar números em uma lista"
  putStrLn "8. Somar os dois primeiros valores de uma lista"
  putStrLn "9. Criar lista de 0 até valor absoluto do número"
  putStrLn "10. Par ou ímpar"
  putStrLn "11. Filtrar pares"
  putStrLn "12. Somente minúsculas"
  putStrLn "13. Substituir vogais"
  putStrLn "14. Adicionar \"Friboi\" a cada string"
  putStrLn "15. Pertence à lista"
  putStrLn "16. Eliminar valores repetidos"
  putStrLn "17. Primeiros n elementos de uma lista"
  putStrLn "18. Múltiplos de 3 de 0 a 300"
  putStrLn "0. Sair"

-- Função para ler e validar entradas
readAndValidate :: Read a => String -> (a -> Bool) -> IO a
readAndValidate prompt validator = do
  putStrLn prompt
  input <- getLine
  case reads input of
    [(value, "")] | validator value -> return value
    _ -> do
      putStrLn "Entrada inválida, tente novamente."
      readAndValidate prompt validator

readAndValidateBool :: IO Bool
readAndValidateBool = do
  putStrLn "Digite um valor booleano (True/False) (ex: True):"
  input <- getLine
  case input of
    "True"  -> return True
    "False" -> return False
    _       -> do
      putStrLn "Entrada inválida, tente novamente."
      readAndValidateBool

-- Função para ler lista, necessária para especificar o tipo ao chamá-la
readAndValidateList :: Read a => String -> IO [a]
readAndValidateList prompt = do
  putStrLn prompt
  input <- getLine
  case reads input of
    [(value, "")] -> return value
    _ -> do
      putStrLn "Entrada inválida, tente novamente."
      readAndValidateList prompt

-- Função principal
main :: IO ()
main = loop

-- Função de loop para o menu
loop :: IO ()
loop = do
  menu
  escolha <- getLine
  putStrLn "\n-----------------------------\n"
  case escolha of
    "1" -> do
      r <- readAndValidate "Digite o raio (ex: 5):" (\x -> x >= 0)
      let area = areaCircunferencia r
      putStrLn $ "Área da circunferência de raio " ++ show r ++ " é " ++ show area
      putStrLn "\n-----------------------------\n"
      loop
    "2" -> do
      a <- readAndValidate "Digite o primeiro lado (ex: 3):" (\x -> x > 0)
      b <- readAndValidate "Digite o segundo lado (ex: 4):" (\x -> x > 0)
      c <- readAndValidate "Digite o terceiro lado (ex: 5):" (\x -> x > 0)
      putStrLn $ "Tipo do triângulo: " ++ tipoTriangulo a b c
      putStrLn "\n-----------------------------\n"
      loop
    "3" -> do
      x <- readAndValidate "Digite o primeiro número para multiplicar (ex: 3):" (\_ -> True) :: IO Double -- Tipo necessário para evitar ambiguidades
      y <- readAndValidate "Digite o segundo número para multiplicar (ex: 4):" (\_ -> True) :: IO Double -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (multiplica x y)
      putStrLn "\n-----------------------------\n"
      loop
    "4" -> do
      x <- readAndValidate "Digite o primeiro número natural para multiplicar (ex: 3):" (\x -> x >= 0)
      y <- readAndValidate "Digite o segundo número natural para multiplicar (ex: 4):" (\x -> x >= 0)
      putStrLn $ "Resultado: " ++ show (multiplicaNaturais x y)
      putStrLn "\n-----------------------------\n"
      loop
    "5" -> do
      x <- readAndValidate "Digite o primeiro valor (ex: 3):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      y <- readAndValidate "Digite o segundo valor (ex: 4):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      z <- readAndValidate "Digite o terceiro valor (ex: 5):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Menor valor: " ++ show (menor x y z)
      putStrLn $ "Maior valor: " ++ show (maior x y z)
      putStrLn "\n-----------------------------\n"
      loop
    "6" -> do
      a <- readAndValidateBool
      b <- readAndValidateBool
      putStrLn $ "Resultado: " ++ show (xor a b)
      putStrLn "\n-----------------------------\n"
      loop
    "7" -> do
      lista <- readAndValidateList "Digite uma lista de números (ex: [1,2,3]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (clonaNumeros lista)
      putStrLn "\n-----------------------------\n"
      loop
    "8" -> do
      lista <- readAndValidateList "Digite uma lista de números (ex: [1,2,3]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (somaDoisPrimeiros lista)
      putStrLn "\n-----------------------------\n"
      loop
    "9" -> do
      n <- readAndValidate "Digite um número (ex: -5):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (listaAteAbs n)
      putStrLn "\n-----------------------------\n"
      loop
    "10" -> do
      lista <- readAndValidateList "Digite uma lista de números (ex: [1,2,3]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (parOuImpar lista)
      putStrLn "\n-----------------------------\n"
      loop
    "11" -> do
      lista <- readAndValidateList "Digite uma lista de números (ex: [1,2,3]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (soPar lista)
      putStrLn "\n-----------------------------\n"
      loop
    "12" -> do
      putStrLn "Digite uma string (ex: \"Hello World\"):"
      str <- getLine
      putStrLn $ "Resultado: " ++ show (soMinusculas str)
      putStrLn "\n-----------------------------\n"
      loop
    "13" -> do
      putStrLn "Digite uma string (ex: \"Ricardo\"):"
      str <- getLine
      putStrLn $ "Resultado: " ++ show (substituiVogais str)
      putStrLn "\n-----------------------------\n"
      loop
    "14" -> do
      lista <- readAndValidateList "Digite uma lista de strings (ex: [\"Joao\", \"Maria\", \"oi\"]):" :: IO [String] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (adicionaFriboi lista)
      putStrLn "\n-----------------------------\n"
      loop
    "15" -> do
      val <- readAndValidate "Digite um valor (ex: 3):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      lista <- readAndValidateList "Digite uma lista (ex: [1,2,3,4]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (pertence val lista)
      putStrLn "\n-----------------------------\n"
      loop
    "16" -> do
      lista <- readAndValidateList "Digite uma lista (ex: [1,2,2,3,3]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (filtraLista lista)
      putStrLn "\n-----------------------------\n"
      loop
    "17" -> do
      n <- readAndValidate "Digite um número n (ex: 3):" (\_ -> True) :: IO Int -- Tipo necessário para evitar ambiguidades
      lista <- readAndValidateList "Digite uma lista (ex: [1,2,3,4,5]):" :: IO [Int] -- Tipo necessário para evitar ambiguidades
      putStrLn $ "Resultado: " ++ show (primeirosN n lista)
      putStrLn "\n-----------------------------\n"
      loop
    "18" -> do
      putStrLn $ "Resultado: " ++ show multiplosDe3
      putStrLn "\n-----------------------------\n"
      loop
    "0" -> putStrLn "Saindo..."
    _   -> do
      putStrLn "Opção inválida, tente novamente."
      putStrLn "\n-----------------------------\n"
      loop
