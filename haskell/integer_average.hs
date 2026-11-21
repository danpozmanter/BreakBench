import Text.Printf (printf)

main :: IO ()
main = do
  let total = 7 :: Int
      count = 2 :: Int
  let avg = total / count :: Double -- BREAK!
  -- CONTROL! let avg = fromIntegral total / fromIntegral count :: Double
  printf "%.1f\n" avg
