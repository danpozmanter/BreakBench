import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let readings = [10, 20, 30 :: Int]
  let i = read (head args)
  print (readings !! i - readings !! (i - 1))
