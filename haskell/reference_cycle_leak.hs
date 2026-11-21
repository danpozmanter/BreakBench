import System.Environment (getArgs)
import qualified Data.ByteString as BS
import Data.IORef
import Control.Monad (foldM)

data Node = Node { next :: IORef (Maybe Node), payload :: BS.ByteString }

data Obj = Obj { opayload :: BS.ByteString, callback :: IORef (IO Int) }

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  total <- foldM (\acc i -> do
    na <- newIORef Nothing
    nb <- newIORef Nothing
    let a = Node na (BS.replicate 2048 (fromIntegral i))
        b = Node nb (BS.replicate 2048 1)
    writeIORef na (Just b)
    writeIORef nb (Just a)
    cb <- newIORef (return 0)
    let o = Obj (BS.replicate 2048 2) cb
    writeIORef cb (return (BS.length (opayload o)))
    r <- readIORef (callback o) >>= id
    return (acc + r + BS.length (payload a) - BS.length (payload b))) 0 [1 .. n]
  putStrLn (if total < 0 then "unreachable" else "done")
