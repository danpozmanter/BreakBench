import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let ids = [10, 20, 30 :: Int]
  let i = head args
  putStrLn (if i `elem` ids then "found" else "missing") -- CONTROL! putStrLn (if read i `elem` ids then "found" else "missing")
