numSorted :: Ord a => a -> [a] -> Int
numSorted a [] = 0
numSorted a (x:y) 
    | a < x = 0
    | a == x = 1 + numSorted a y
    | otherwise = 0 + numSorted a y