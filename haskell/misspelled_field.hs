import System.Environment (getArgs)

data Config = Config { color :: String }

main :: IO ()
main = do
  let cfg = Config { color = "blue" }
  let cfg' = cfg { colour = "red" } -- BREAK!
  -- CONTROL! let cfg' = cfg { color = "red" }
  putStrLn (color cfg)
  putStrLn (color cfg')
