-- LEVEL: STD

{-# LANGUAGE ScopedTypeVariables #-}

import Control.Exception

work :: IO ()
work = evaluate (error "panic" :: ()) `finally` putStrLn "cleanup"

main :: IO ()
main = work `catch` \(_ :: ErrorCall) -> putStrLn "recovered"
