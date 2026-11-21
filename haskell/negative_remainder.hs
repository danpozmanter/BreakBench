import System.Environment (getArgs)

isOdd :: Int -> Bool
isOdd n = n `mod` 2 == 1

main :: IO ()
main = do
  args <- getArgs
  putStrLn (if isOdd (read (head args)) then "odd" else "even")
