fibo :: Integer -> Integer
fibo 1 = 1
fibo 2 = 1
fibo n = sum . map fibo $ [n-1,  n-2]

