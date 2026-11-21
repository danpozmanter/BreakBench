import Control.Monad (when)

main :: IO ()
main = do
  let s = "abc"
  when (not (null s) && head s == 'a') (putStrLn "yes")
  when (not (null s) & (head s == 'a')) (putStrLn "both") -- BREAK!
