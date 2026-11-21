import System.Environment (getArgs)

add :: Int -> Int -> Int
add a b = a + b

main :: IO ()
main = do
  args <- getArgs
  let raw = head args
  print (add raw 3) -- BREAK!
  putStrLn (raw ++ " " ++ show (add 1 2))
