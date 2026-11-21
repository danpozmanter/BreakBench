import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let x = read (head args) :: Int
  let inside = 1 < x < 3 -- BREAK!
  -- CONTROL! let inside = 1 < x && x < 3
  putStrLn (if inside then "inside" else "outside")
