-- LEVEL: STD

import qualified Data.Set as Set

main :: IO ()
main = do
  let a = read "NaN" :: Double
      b = read "NaN" :: Double
  putStrLn (if Set.member b (Set.fromList [a]) then "found" else "missing")
