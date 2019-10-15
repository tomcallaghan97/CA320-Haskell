delAll :: Eq a => a -> [a] -> [a]
delAll _ [] = []
delAll num (x:xs) 
    | num == x = delAll num xs
    | otherwise = x : delAll num xs