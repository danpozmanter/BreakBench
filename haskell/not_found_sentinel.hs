import Data.List (elemIndex)
import Data.Maybe (maybe)
import System.Environment (getArgs)

main :: IO ()
main = do
  [line] <- getArgs
  let pos = elemIndex ':' line
  putStrLn (drop (pos + 1) line) -- CONTROL! putStrLn (maybe "" (\p -> drop (p + 1) line) pos)
