-- LEVEL: LANGUAGE

import Data.Int (Int32, Int64)

main :: IO ()
main = do
  let big = 42 :: Int64
      small = fromIntegral big :: Int32
  print (big :: Int32) -- REJECT!
  print small
