quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort [ k | k<-xs, k<=x] ++ [x] ++ quicksort [ k | k<-xs, k>x]

