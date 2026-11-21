-- LEVEL: LANGUAGE

import Control.Monad (when)

main :: IO ()
main = do
  let ident = 42 :: Int
  when (ident == 42) (putStrLn "match")
  when (ident == "42") (putStrLn "text") -- REJECT!
