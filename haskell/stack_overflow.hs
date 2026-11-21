import System.Environment (getArgs)

walk :: Int -> Int
walk 0 = 0
walk n = (walk (n - 1) * 31 + n) `mod` 1000000007

main :: IO ()
main = do
  args <- getArgs
  print (walk (read (head args)))
