module Main (main) where

main::IO() 
main = putStr (show (duplicate 3 [4,1,6,1]))

duplicate :: Int -> [a] -> [a]
duplicate _ [] = []
duplicate n (x:xs) = (take n (cycle [x])) ++ duplicate n xs
