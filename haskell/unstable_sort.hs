import Data.List (sortOn)

data Order = Order {customer :: Int, day :: Int}

main :: IO ()
main = do
  let orders = [Order (d * 7 `mod` 5) d | d <- [0 .. 199]]
      sorted = sortOn customer orders
      kept = and (zipWith (\a b -> customer a /= customer b || day a < day b) sorted (tail sorted))
  putStrLn (if kept then "kept" else "scrambled")
