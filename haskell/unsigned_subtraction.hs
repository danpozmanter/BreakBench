import System.Environment (getArgs)

header :: Int
header = 5

main :: IO ()
main = do
  args <- getArgs
  let payload = length (head args) - header
  putStrLn (if payload < 0 then "short" else show payload)
