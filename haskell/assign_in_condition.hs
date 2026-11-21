import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let x = read (head args) :: Int
  putStrLn (if x = 1 then "one" else "not one") -- BREAK!
  -- CONTROL! putStrLn (if x == 1 then "one" else "not one")
