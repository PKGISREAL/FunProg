module Main (main) where

main::IO()
main = do  print $ show (count tree1)
           print $ show (count tree2)
           print $ show (count tree3)
          
         
data Tree a = Leaf | Node a (Tree a) (Tree a)
count :: Tree a -> Int
count Leaf = 1
count (Node x a b) = count a + count b