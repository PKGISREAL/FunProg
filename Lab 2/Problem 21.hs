module Main (main) where

main::IO()
main = putStr (show (insert 2 3 [2, 5, 6, 57]))

insert :: a -> Int -> [a] -> [a]
insert new _ [] = [new]
insert new i (x:xs)
  | i <= 0 = new:x:xs
  | otherwise = a : insert new (i - 1) xs