import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  putStrLn (case n of
    1 -> "one"
    2 -> "two"
    _ -> "other")
