-- LEVEL: STD

import qualified Data.Set as S

main :: IO ()
main = putStrLn (if S.member (1, 2) (S.fromList [(1 :: Int, 2 :: Int)]) then "true" else "false")
