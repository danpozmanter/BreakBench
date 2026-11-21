-- LEVEL: LANGUAGE

import Data.Word (Word)

main :: IO ()
main = do
  let i = -1 :: Int
      n = 3 :: Word
  print (i < n) -- REJECT!
  putStrLn (if i < fromIntegral n then "less" else "not less")
