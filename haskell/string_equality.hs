import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let s = "ab" ++ head args
  putStrLn (if s == "abc" then "equal" else "different")
