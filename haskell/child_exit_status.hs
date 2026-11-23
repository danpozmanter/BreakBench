import System.Process (callProcess)

main :: IO ()
main = do
  callProcess "sh" ["-c", "exit 3"]
  putStrLn "backed up"
