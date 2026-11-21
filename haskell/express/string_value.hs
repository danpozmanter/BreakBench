-- LEVEL: LANGUAGE

main :: IO ()
main = do
  let a = "abc"
      b = a ++ "d"
  putStrLn a
  length b `seq` return ()
