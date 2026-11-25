import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let ready = args !! 0 == "yes"
      approved = args !! 1 == "yes"
      ok = ready && approved
  putStrLn (if ok then "go" else "wait")
