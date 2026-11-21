-- LEVEL: STD

import qualified Data.ByteString.Builder as B
import qualified Data.ByteString.Lazy as BL

main :: IO ()
main = print (BL.length (B.toLazyByteString (foldMap (B.word8 . fromIntegral) [1 .. 100000 :: Int])))
