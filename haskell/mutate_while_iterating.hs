import Data.List (intercalate)

main :: IO ()
main = do
  let xs = filter (/= 2) [1, 2, 2, 3 :: Int]
  putStrLn (intercalate "," (map show xs))
