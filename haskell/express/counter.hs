-- LEVEL: STD

import qualified Data.Map as M

main :: IO ()
main = do
  let counts = M.fromListWith (+) [(w, 1 :: Int) | w <- ["a", "b", "a"]]
  putStrLn (unwords [k ++ "=" ++ show v | (k, v) <- M.toList counts])
