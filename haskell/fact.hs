-- Guards
fact1 :: Integer -> Integer
fact1 n
	| n == 0 = 1
	| otherwise = n * (fact1 $ n-1)

-- Pattern matching
fact2 :: Integer -> Integer
fact2 0 = 1
fact2 n = n * (fact2 $ n-1)

-- Folding
fact3 :: Integer -> Integer
fact3 n = foldl1 (\acc x -> acc * x) [1.. n]

