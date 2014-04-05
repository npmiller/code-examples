-- Classic recursion
prime1' :: Integer -> Integer -> Bool
prime1' n i
	| n == 2 = True
	| i >  minVal n = True
	| n `mod` i == 0 = False
	| i `mod` 2 == 0 = prime1' n (i+1)
	| otherwise = prime1' n (i+2)
	where minVal = ceiling.sqrt.fromIntegral

prime1 :: Integer -> Bool
prime1 n = prime1' n 2

-- Filtering
prime2 :: Integer -> Bool
prime2 1 = False
prime2 2 = True
prime2 n = null $ filter (\x -> n `mod` x == 0) (2:[ 3, 5 .. ceiling.sqrt.fromIntegral $ n])

-- Mapping
prime3 :: Integer -> Bool
prime3 n = not $ True `elem` map ((== 0). mod n) (2:[ 3, 5 .. ceiling.sqrt.fromIntegral $ n])

-- Folding
prime4 :: Integer -> Bool
prime4 n = foldl (\acc x -> and [ not $ n `mod` x == 0, acc]) True (2:[ 3, 5 .. ceiling.sqrt.fromIntegral $ n])

