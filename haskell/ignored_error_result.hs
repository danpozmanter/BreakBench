-- CONTROL! import Control.Exception (IOException, try)
save :: FilePath -> IO ()
save path = writeFile path "data"

main :: IO ()
main = do
  save "/dev/null/out.txt" -- CONTROL! r <- try (save "/dev/null/out.txt") :: IO (Either IOException ())
  putStrLn "saved" -- CONTROL! putStrLn (either (const "failed") (const "saved") r)
