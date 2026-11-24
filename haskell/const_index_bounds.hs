main :: IO ()
main = do
  let table = [10, 20, 30] :: [Int]
  print (table !! 5) -- CONTROL! print (table !! 1)
