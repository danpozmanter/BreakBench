import Data.List (sort)

main :: IO ()
main = do
  let nan = 0 / 0 :: Double
  let xs = sort [5, nan, 3, 1, nan, 4, 2]
  let finite = filter (not . isNaN) xs
  putStrLn (if and (zipWith (<=) finite (drop 1 finite)) then "ordered" else "unordered")
