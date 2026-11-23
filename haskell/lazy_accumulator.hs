import Control.Monad (replicateM_)
import qualified Data.ByteString as BS
import Data.IORef
import System.Environment (getArgs)
import System.IO

main :: IO ()
main = do
  args <- getArgs
  let count = read (head args) :: Int
  total <- newIORef (0 :: Int)
  withBinaryFile "/dev/zero" ReadMode $ \source ->
    replicateM_ count $ do
      message <- BS.hGet source 4096
      modifyIORef total (+ BS.length message)
  readIORef total >>= print
