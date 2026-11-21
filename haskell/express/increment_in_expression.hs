-- LEVEL: LANGUAGE

main :: IO ()
main = do
  let i = 0 + 1 :: Int
  let j = i++ -- REJECT!
  print i
