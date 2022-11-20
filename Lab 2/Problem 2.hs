--Problem 1
module Main (main) where 

main :: IO ()
main = putStr (show(prelastElem [1..5]))

prelastElem :: [a] -> a

prelastElem [a, b] = a
prelastElem [a] = error "one elem"
prelastElem [] = error "no elem"

prelastElem (a : ab) = prelastElem ab



