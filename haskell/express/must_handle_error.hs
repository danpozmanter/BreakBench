-- LEVEL: LANGUAGE

save :: IO (Either String ())
save = return (Left "disk full")

main :: IO ()
main = do
  save -- REJECT!
  r <- save
  putStrLn (either (const "handled") (const "saved") r)
