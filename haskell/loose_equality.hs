import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let code = head args
  putStrLn (if code == 0 then "same" else "different") -- CONTROL! putStrLn (if code == "0" then "same" else "different")
