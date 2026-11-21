-- LEVEL: STD

import GHC.Conc (setUncaughtExceptionHandler)

main :: IO ()
main = do
  setUncaughtExceptionHandler (\_ -> putStrLn "hook ran")
  ioError (userError "boom")
