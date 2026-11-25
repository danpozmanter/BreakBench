import Control.Monad (foldM)
import qualified Data.ByteString as B
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read (concat args) :: Int
  seen <- foldM (\acc i -> do
                   let rec = B.replicate 4096 (fromIntegral (i `mod` 2 + 1))
                   pure $! acc + min 1 (fromIntegral (B.head rec))) 0 [1 .. n]
  putStrLn (if seen == n then "done" else "lost")
