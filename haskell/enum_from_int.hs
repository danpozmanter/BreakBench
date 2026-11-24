import System.Environment (getArgs)
import System.IO (hFlush, stdout)

data Color = Red | Green | Blue deriving (Show, Enum)

main :: IO ()
main = do
  args <- getArgs
  putStrLn "before"
  hFlush stdout
  print (toEnum (read (head args)) :: Color) -- CONTROL! let n = read (head args) :: Int in putStrLn (if n >= 0 && n <= fromEnum Blue then show (toEnum n :: Color) else "invalid")
