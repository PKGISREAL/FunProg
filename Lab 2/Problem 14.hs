module Main (main) where

main::IO() 
main = putStr (show (duplicate [1, 2, 34] ))

duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x : x : duplicate xs