import Data.Maybe (fromJust)
import System.IO (hFlush, stdout)

find :: Int -> Maybe Int
find n = if n == 1 then Just 36 else Nothing

main :: IO ()
main = do
  putStrLn "before"
  hFlush stdout
  print (fromJust (find 2) + 1) -- CONTROL! putStrLn (maybe "missing" (show . (+ 1)) (find 2))
