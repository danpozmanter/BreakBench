-- LEVEL: STD

import qualified Data.Set as S

main :: IO ()
main = putStrLn (unwords (map show (S.toList (S.fromList [3, 1, 2 :: Int]))))
