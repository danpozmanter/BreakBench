import System.Environment (getArgs)
import Data.Array.IO
import Data.IORef

main :: IO ()
main = do
  args <- getArgs
  buf <- newArray (0, 3) 0 :: IO (IOUArray Int Int)
  guard <- newIORef (7 :: Int)
  writeArray buf (read (head args)) 99 -- CONTROL! let i = read (head args) in if i >= 0 && i <= 3 then writeArray buf i 99 else return ()
  readIORef guard >>= print
