data Tree a = Leaf | Node a (Tree a) (Tree a) deriving (Show,Eq)

treemap :: (a -> b) -> Tree a -> Tree b
treemap f Leaf = f 0
treemap f (Node elem l r) = Node (f elem) (treemap f l) (treemap f r) 


--instance Functor (Tree) where 
--  fmap = treemap
