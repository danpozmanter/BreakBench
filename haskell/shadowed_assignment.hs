import System.Environment (getArgs)
import Control.Monad (when)
import Data.IORef
import System.IO (hPutStrLn, stderr)

main :: IO ()
main = do
  args <- getArgs
  status <- newIORef "pending"
  when (head args == "ok") $ do
    let status = "done" -- CONTROL! writeIORef status "done"
    hPutStrLn stderr ("status: " ++ status) -- CONTROL! readIORef status >>= hPutStrLn stderr . ("status: " ++)
  readIORef status >>= putStrLn
