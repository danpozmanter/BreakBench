import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  let x :: Int -- BREAK!
  -- CONTROL! let x = if n > 5 then 10 else 0 :: Int
  print x
