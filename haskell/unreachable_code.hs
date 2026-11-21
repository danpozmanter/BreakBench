check :: IO ()
check = do
  putStrLn "ok"
  return ()
  putStrLn "checked"

main :: IO ()
main = check
