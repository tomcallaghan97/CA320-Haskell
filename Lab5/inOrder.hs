data Tree a = Null | Node a (Tree a) (Tree a)
     deriving (Read,Show)

inOrder :: Tree a -> [a]
inOrder Null           = []
inOrder (Node n t1 t2) = (inOrder t1) ++ [n] ++ (inOrder t2)