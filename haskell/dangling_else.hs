import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let a = head args == "1"
  let b = True
  let r = if a then if b then "both" else "not a" -- BREAK!
  -- CONTROL! let r = if a then (if b then "both" else "neither") else "not a"
  putStrLn r
