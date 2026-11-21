-- LEVEL: LANGUAGE

import qualified Data.ByteString as B

data Rec = Rec { recId :: !Int, payload :: !B.ByteString }

build :: Int -> Rec -> Rec
build i r
  | i == 4000000 = r
  | otherwise = let r' = Rec i (B.replicate 1016 (fromIntegral i)) in r' `seq` build (i + 1) r'

main :: IO ()
main = do
  let r = build 0 (Rec 0 B.empty)
  print (recId r + B.length (payload r) - 1016)
