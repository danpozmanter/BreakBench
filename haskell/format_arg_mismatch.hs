import Text.Printf (printf)

main :: IO ()
main = do
  let completed = 3 :: Int
      total = 5 :: Int
  printf "%d of %d\n" completed
  print (total - total)
