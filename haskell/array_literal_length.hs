main :: IO ()
main = do
  let table = [10, 20, 30] :: [Int] -- CONTROL! let table = [10, 20, 30, 40] :: [Int]
  print (table !! 3)
