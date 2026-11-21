import Control.Exception

writeReport :: IO ()
writeReport = throwIO (userError "disk full")

closeLog :: IO ()
closeLog = return ()

saveReport :: IO ()
saveReport = writeReport `finally` closeLog

main :: IO ()
main = do
  r <- try saveReport :: IO (Either IOException ())
  putStrLn (either (const "failed") (const "saved") r)
