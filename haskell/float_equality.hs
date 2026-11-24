import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let x = read (args !! 0) :: Double
      y = read (args !! 1) :: Double
  putStrLn (if x + y == 0.3 then "equal" else "not equal") -- CONTROL! putStrLn (if abs (x + y - 0.3) < 1e-9 then "equal" else "not equal")
