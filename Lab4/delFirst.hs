delFirst :: Eq a => a -> [a] -> [a]
delFirst num [] = []
delFirst num (x:xs) 
    | num == x = xs
    | otherwise = x : delFirst num xs