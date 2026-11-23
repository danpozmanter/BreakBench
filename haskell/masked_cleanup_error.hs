import Control.Exception

data Report = Report

writeReport :: Report -> String -> IO ()
writeReport _ _ = throwIO (userError "disk full")

closeReport :: Report -> IO ()
closeReport _ = throwIO (userError "close failed")

save :: IO ()
save = bracket (pure Report) closeReport (`writeReport` "totals")

main :: IO ()
main = save `catch` \e -> putStrLn (displayException (e :: IOException))
