import Text.Printf (printf)

main :: IO ()
main = do
  let completed = 3 :: Int
      total = 5 :: Int
  printf "%d of %d\n" completed -- CONTROL! printf "%d of %d\n" completed total
  print (total - total) -- BREAK!
