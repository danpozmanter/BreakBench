-- LEVEL: LANGUAGE
{-# LANGUAGE TemplateHaskell #-}

import Control.Monad (when)

$(when (100 > (255 :: Int)) (fail "100 does not fit in a byte") >> return [])
$(when (300 > (255 :: Int)) (fail "300 does not fit in a byte") >> return []) -- REJECT!

main :: IO ()
main = print (100 :: Int)
