import System.Environment (getArgs)
import Text.Read (readMaybe)

main :: IO ()
main = do
  args <- getArgs
  let qty = readMaybe (head args) :: Maybe Int
  let present = if qty then True else False -- BREAK!
  -- CONTROL! let present = qty /= Nothing
  putStrLn (if present then "have " ++ maybe "" show qty else "missing")
