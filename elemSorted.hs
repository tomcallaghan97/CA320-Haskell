elemSorted :: Ord a => a -> [a] -> Bool

elemSorted a [] = False
elemSorted a (x:y)
    | a == x = True
    | a < x = False
    | otherwise = elemSorted a y