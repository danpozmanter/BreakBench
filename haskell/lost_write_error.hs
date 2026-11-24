-- CONTROL! import Control.Exception (IOException, try)
main :: IO ()
main = do
  writeFile "/dev/full" "data\n" -- CONTROL! r <- try (writeFile "/dev/full" "data\n") :: IO (Either IOException ())
  putStrLn "saved" -- CONTROL! putStrLn (either (const "failed") (const "saved") r)
