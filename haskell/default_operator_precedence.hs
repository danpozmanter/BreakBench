import Data.Maybe (fromMaybe)
import System.Environment (getArgs)

cachedCount :: String -> Maybe Int
cachedCount name = if name == "ada" then Just 4 else Nothing

main :: IO ()
main = do
  args <- getArgs
  let cached = cachedCount (head args)
  print (fromMaybe 0 cached + 1)
