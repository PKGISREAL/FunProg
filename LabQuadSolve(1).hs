module Lib (main) where

data Dype = Twoanswer {x1 , x2 :: Double} | Oneanswer {x :: Double} | Noanswer


main :: IO()

main = do
    putStrLn "Give a"
    a <- getLine
    putStrLn "Give b"
    b <- getLine
    putStrLn "Give c"
    c <- getLine
    print . printAnswer $ quad (read a :: Double) (read b :: Double) (read c :: Double)

printAnswer :: Dype -> String
printAnswer Noanswer = "No Answer"
printAnswer (Oneanswer x) = show x
printAnswer (Twoanswer x1 x2) = show x1 ++ " " ++ show x2


quad a b c
    | disc < 0 = Noanswer
    | disc > 0 = Twoanswer {x1 = x1, x2 = x2}
    | otherwise = Oneanswer {x = x1}   
    where
        disc = b ^ 2 - 4 * a * c
        x1 = (- b - sqrt disc) / (2 * a)
        x2 = (- b + sqrt disc) / (2 * a) 
    




