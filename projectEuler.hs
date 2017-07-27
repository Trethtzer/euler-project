-- Problema 1
porblema1 = sum [ x | x <- [1..999], ((x `mod` 3) == 0) || ((x `mod` 5) == 0)]

-- Problema 2
checkEven :: Int -> Bool
checkEven x = x `mod` 2 == 0

fib :: [Int] -> [Int]
fib (x:y:xs)
    | x < 4000000 = fib ((x+y) : x : y : xs)
    | otherwise = y : xs

problema2 = sum([x | x <- fib(1:1:[]) , checkEven x])