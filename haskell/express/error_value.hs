-- LEVEL: LANGUAGE

parsePort :: String -> Either String Int
parsePort s = case reads s of
  [(p, "")] | p > 0 && p < 65536 -> Right p
  _ -> Left ("bad port: " ++ s)

main :: IO ()
main = putStrLn (either (const "error") (("port " ++) . show) (parsePort "x"))
