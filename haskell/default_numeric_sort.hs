import Data.List (sort)

main :: IO ()
main = putStrLn (unwords (map show (sort [10, 9, 1 :: Int])))
