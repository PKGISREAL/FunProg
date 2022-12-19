data Tree = Nil | Node Char Tree Tree deriving (Show, Eq)

path a b
      | a == b = [(b,b)]
      | otherwise = [(a,b),(b,a)] 
      
cbal-Tree 0 = [Nil]
cbal-Tree 1 = [Node 'x' Nil Nil]
cbal-Tree 2 = [Node 'x' Nil (Node 'x' Nil Nil), Node 'x' (Node 'x' Nil Nil) Nil]
cbal-Tree n = [Node 'x' l r | (k1,k2) <- path a1 a2, l <-cbal-Tree k1, r <- cbal-Tree k2] where
    a1 = div t 2
    a2 = div t 2 + mod t 2
    t = n-1

main = print $ show (cbalTree 2)