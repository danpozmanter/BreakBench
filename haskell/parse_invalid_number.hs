import System.Environment (getArgs)
-- CONTROL! import Text.Read (readMaybe)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int -- CONTROL! let n = readMaybe (head args) :: Maybe Int
  print (n + 1) -- CONTROL! putStrLn (maybe "invalid" (show . (+ 1)) n)
