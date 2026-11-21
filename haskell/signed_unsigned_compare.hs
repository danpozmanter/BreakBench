import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let i = read (head args) :: Int
  putStrLn (if i < length [1, 2, 3 :: Int] then "less" else "not less")
