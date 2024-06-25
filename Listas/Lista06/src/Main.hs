import Data.Char (toUpper)

-- 1. Função para calcular a área de uma circunferência
areaCircunferencia :: Float -> Float
areaCircunferencia r = pi * r^2

-- 2. Função para identificar o tipo de triângulo
tipoTriangulo :: Float -> Float -> Float -> String
tipoTriangulo a b c
  | a + b <= c || a + c <= b || b + c <= a = "NAOTRI"
  | a == b && b == c = "Equilátero"
  | a == b || a == c || b == c = "Isósceles"
  | otherwise = "Escaleno"

-- 3. Função recursiva para multiplicação sem usar operador *
multiplica :: Int -> Int -> Int
multiplica _ 0 = 0
multiplica x y = x + multiplica x (y - 1)

-- 4. Função recursiva para multiplicação de naturais sem usar operador *
multiplicaNaturais :: Int -> Int -> Int
multiplicaNaturais _ 0 = 0
multiplicaNaturais x y = x + multiplicaNaturais x (y - 1)

-- 5. Funções menor e maior
menor :: Ord a => a -> a -> a -> a
menor x y z = min x (min y z)

maior :: Ord a => a -> a -> a -> a
maior x y z = max x (max y z)

-- 6. Função XOR
xor :: Bool -> Bool -> Bool
xor a b = (a || b) && not (a && b)

-- 7. Função para clonar números em uma lista
clonaNumeros :: [Int] -> [Int]
clonaNumeros [] = []
clonaNumeros (x:xs) = x : x : clonaNumeros xs

-- 8. Função para somar os dois primeiros valores de uma lista
somaDoisPrimeiros :: [Int] -> Int
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

-- 14. Função para adicionar " Friboi" a cada string em uma lista
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

-- Função principal
main :: IO ()
main = loop

-- Função de loop para o menu
loop :: IO ()
loop = do
  menu
  escolha <- getLine
  case escolha of
    "1" -> do
      putStrLn "Digite o raio:"
      r <- readLn
      print $ areaCircunferencia r
      loop
    "2" -> do
      putStrLn "Digite os lados do triângulo:"
      a <- readLn
      b <- readLn
      c <- readLn
      putStrLn $ tipoTriangulo a b c
      loop
    "3" -> do
      putStrLn "Digite dois números para multiplicar:"
      x <- readLn
      y <- readLn
      print $ multiplica x y
      loop
    "4" -> do
      putStrLn "Digite dois números naturais para multiplicar:"
      x <- readLn
      y <- readLn
      print $ multiplicaNaturais x y
      loop
    "5" -> do
      putStrLn "Digite três valores:"
      x <- readLn
      y <- readLn
      z <- readLn
      putStrLn $ "Menor valor: " ++ show (menor x y z)
      putStrLn $ "Maior valor: " ++ show (maior x y z)
      loop
    "6" -> do
      putStrLn "Digite dois valores booleanos (True/False):"
      a <- readLn
      b <- readLn
      print $ xor a b
      loop
    "7" -> do
      putStrLn "Digite uma lista de números:"
      lista <- readLn
      print $ clonaNumeros lista
      loop
    "8" -> do
      putStrLn "Digite uma lista de números:"
      lista <- readLn
      print $ somaDoisPrimeiros lista
      loop
    "9" -> do
      putStrLn "Digite um número:"
      n <- readLn
      print $ listaAteAbs n
      loop
    "10" -> do
      putStrLn "Digite uma lista de números:"
      lista <- readLn
      print $ parOuImpar lista
      loop
    "11" -> do
      putStrLn "Digite uma lista de números:"
      lista <- readLn
      print $ soPar lista
      loop
    "12" -> do
      putStrLn "Digite uma string:"
      str <- getLine
      print $ soMinusculas str
      loop
    "13" -> do
      putStrLn "Digite uma string:"
      str <- getLine
      print $ substituiVogais str
      loop
    "14" -> do
      putStrLn "Digite uma lista de strings:"
      lista <- readLn
      print $ adicionaFriboi lista
      loop
    "15" -> do
      putStrLn "Digite um valor e uma lista:"
      val <- readLn
      lista <- readLn
      print $ pertence val lista
      loop
    "16" -> do
      putStrLn "Digite uma lista:"
      lista <- readLn
      print $ filtraLista lista
      loop
    "17" -> do
      putStrLn "Digite um número n e uma lista:"
      n <- readLn
      lista <- readLn
      print $ primeirosN n lista
      loop
    "18" -> do
      print multiplosDe3
      loop
    "0" -> putStrLn "Saindo..."
    _   -> do
      putStrLn "Opção inválida, tente novamente."
      loop
