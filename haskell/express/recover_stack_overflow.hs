-- LEVEL: STD

{-# LANGUAGE ScopedTypeVariables #-}

import Control.Exception

deep :: Int -> Int
deep 0 = 0
deep n = 1 + deep (n - 1)

main :: IO ()
main = do
  r <- try (evaluate (deep 1000000000))
  case r of
    Left StackOverflow -> putStrLn "stack overflow"
    Left (e :: AsyncException) -> throwIO e
    Right n -> print n
