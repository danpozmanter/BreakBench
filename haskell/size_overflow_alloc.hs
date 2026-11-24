import Data.Array.IO
import Data.Word (Word8)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let count = read (head args) :: Int
      size = count * 8
  records <- newArray (0, size - 1) 0 :: IO (IOUArray Int Word8) -- CONTROL! if count > 2 ^ 27 then putStrLn "too large" else do
    -- CONTROL! records <- newArray (0, size - 1) 0 :: IO (IOUArray Int Word8)
    -- CONTROL! writeArray records 8 99
    -- CONTROL! putStrLn "stored"
  writeArray records 8 99 -- BREAK!
  putStrLn "stored" -- BREAK!
