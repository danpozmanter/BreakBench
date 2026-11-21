data Config = Config {timeout :: Int, retries :: Int}

main :: IO ()
main = do
  let c = Config {timeout = 30} -- CONTROL! let c = Config {timeout = 30, retries = 3}
  print (retries c)
