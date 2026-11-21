import System.Environment (getArgs)
import System.IO
import Control.Monad (forM_)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  writeFile "/tmp/bb_fd.txt" "x"
  forM_ [1 .. n] $ \_ -> do
    h <- openFile "/tmp/bb_fd.txt" ReadMode
    c <- hGetChar h
    c `seq` return ()
  putStrLn "done"
