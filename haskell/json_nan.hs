{-# LANGUAGE OverloadedStrings #-}

import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as BL
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let count = read (head args) :: Int
      mean = 0 / fromIntegral count :: Double
  BL.putStrLn (encode (object ["mean" .= mean])) -- CONTROL! putStrLn (if isNaN mean || isInfinite mean then "refused" else BL.unpack (encode (object ["mean" .= mean])))
