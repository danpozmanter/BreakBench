import Data.List (intercalate)

main :: IO ()
main = do
  let fs = [\() -> i | i <- [0 .. 2 :: Int]]
  putStrLn (intercalate "," [show (f ()) | f <- fs])
