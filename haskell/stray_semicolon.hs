import System.Environment (getArgs)

size :: Int -> String
size n = if n > 5; then "big" else "small" -- CONTROL! size n = if n > 5 then "big" else "small"

main :: IO ()
main = do
  args <- getArgs
  mapM_ (putStrLn . size . read) (take 2 args)
