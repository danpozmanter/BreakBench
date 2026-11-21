import Data.List (sort)

data Point = Point Int Int

main :: IO ()
main = do
  print (head (sort [3, 1, 2 :: Int]))
  print (length (sort [Point 1 2])) -- BREAK!
