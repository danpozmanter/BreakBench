-- LEVEL: LANGUAGE

newtype Config = Config {name :: String}

main :: IO ()
main = do
  let c = Config "app"
  putStrLn (name (Nothing :: Config)) -- REJECT!
  putStrLn (name c)
