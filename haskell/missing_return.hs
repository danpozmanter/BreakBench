import System.Environment (getArgs)

grade :: Int -> String
grade score
  | score > 50 = "pass"
  | score < 50 = "fail"

main :: IO ()
main = do
  args <- getArgs
  putStrLn (grade (read (head args)))
