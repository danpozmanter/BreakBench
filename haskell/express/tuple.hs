-- LEVEL: LANGUAGE

pair :: (Int, String)
pair = (1, "a")

main :: IO ()
main = do
  let (n, s) = pair
  putStrLn (show n ++ " " ++ s)
