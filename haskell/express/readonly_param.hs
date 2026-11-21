-- LEVEL: LANGUAGE

import Data.Array.IO (writeArray)

count :: [Int] -> IO Int
count xs = do
  writeArray xs 0 9 -- REJECT!
  return (length xs)

main :: IO ()
main = count [1, 2, 3] >>= print
