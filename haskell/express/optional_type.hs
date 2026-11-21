-- LEVEL: LANGUAGE

main :: IO ()
main = do
  let o = Nothing :: Maybe Int
  print (o + 1) -- REJECT!
  putStrLn (maybe "none" show o)
