import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let name = "a👍b"
      n = read (head args) :: Int
  putStrLn (take n name)
