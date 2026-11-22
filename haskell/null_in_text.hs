import Data.Maybe (fromMaybe)
import System.Environment (getArgs)

findName :: Int -> Maybe String
findName i = if i == 1 then Just "alice" else Nothing

main :: IO ()
main = do
  args <- getArgs
  let name = findName (read (head args))
  putStrLn ("hello, " ++ name) -- CONTROL! putStrLn ("hello, " ++ fromMaybe "nobody" name)
