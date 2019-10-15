import Data.List(nub)

dup :: Eq a => [a] -> Bool
dup [] = False
dup [x] = False
dup a 
    | a == nub a = False
    | otherwise = True
       