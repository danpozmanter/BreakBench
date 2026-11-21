main :: IO ()
main = do
  let count = 5 :: Int
  count == 5 -- BREAK!
  print count
