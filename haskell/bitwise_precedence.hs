import System.Environment (getArgs)
import Data.Bits ((.&.))

main :: IO ()
main = do
  args <- getArgs
  let x = read (head args) :: Int
  putStrLn (if x .&. 1 == 0 then "even" else "odd")
