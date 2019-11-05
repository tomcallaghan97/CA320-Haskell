evalPoly :: Int -> [Int] -> Int
evalPoly a [] = 0
evalPoly b (a:as) = a + b * (evalPoly b as)
