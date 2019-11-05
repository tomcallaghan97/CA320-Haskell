data Tree a = Null | Node a (Tree a) (Tree a)
     deriving (Read,Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode p Null = Node p Null Null
addNode p (Node n t1 t2)
   | p<n       = Node n (addNode p t1) t2
   | otherwise = Node n t1 (addNode p t2)