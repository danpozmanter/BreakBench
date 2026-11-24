import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let xs = map read args :: [Int]
  print (maximum xs + 1) -- CONTROL! putStrLn (if null xs then "no readings" else show (maximum xs + 1))
