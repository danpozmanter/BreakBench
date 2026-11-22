main :: IO ()
main = do
  writeFile "/dev/full" "data\n"
  putStrLn "saved"
