-- LEVEL: LANGUAGE

import Data.Array.IO (writeArray)

main :: IO ()
main = do
  let xs = [1, 2, 3 :: Int]
  writeArray xs 0 9 -- REJECT!
  print (length xs)
