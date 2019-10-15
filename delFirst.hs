delFirst :: Eq a => a -> [a] -> [a]
delFirst _ [] = []
delFirst num (x:xs) | num == x = xs
   | otherwise = x : delFirst num xs