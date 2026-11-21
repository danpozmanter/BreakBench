main :: IO ()
main = do
  let i = 0 + 1 :: Int
  let j = i++ -- BREAK!
  print i
