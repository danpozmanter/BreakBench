-- LEVEL: LANGUAGE

showF :: Double -> IO ()
showF = print

main :: IO ()
main = do
  let n = 7 :: Int
  showF (fromIntegral n)
  showF n -- REJECT!
