-- LEVEL: STD

import qualified Data.Map as M

main :: IO ()
main = putStrLn (unwords (M.keys (M.fromList [(k, ()) | k <- ["c", "a", "b"]])))
