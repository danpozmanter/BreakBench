save :: FilePath -> IO ()
save path = writeFile path "data"

main :: IO ()
main = do
  save "/nonexistent/dir/out.txt"
  putStrLn "saved"
