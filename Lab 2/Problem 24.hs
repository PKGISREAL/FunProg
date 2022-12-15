import System.Random (rnd_select)

main::IO()
main = do 
  print(diff_select 6 49)
  
diff_select :: Int -> Int -> IO [Int]
diff_select count maxValue = rnd_select [1..maxValue] count