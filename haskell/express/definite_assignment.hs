-- LEVEL: LANGUAGE

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let ready = length args < 5
      x = if ready then 5 else 5 :: Int
  let y :: Int -- REJECT!
  print x
