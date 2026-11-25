import Data.Word (Word8, Word16)

countPasses :: Word8 -> Int -> Int -- BREAK!
-- CONTROL! countPasses :: Word16 -> Int -> Int
countPasses i passes
  | i < 300 = countPasses (i + 1) (passes + 1)
  | otherwise = passes

main :: IO ()
main = print (countPasses 0 0)
