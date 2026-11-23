import Control.Exception (evaluate)
import Control.Monad (forM_)
import qualified Data.ByteString as B
import System.Environment (getArgs)

data Node = Node { payload :: !B.ByteString, other :: Node }

main :: IO ()
main = do
  args <- getArgs
  let n = read (concat args) :: Int
  forM_ [1 .. n] $ \i -> do
    let parent = Node (B.replicate 4096 (fromIntegral (i `mod` 2 + 1))) child
        child = Node (B.replicate 4096 1) parent
    _ <- evaluate (B.length (payload (other parent)) + B.length (payload (other child)))
    pure ()
  putStrLn "done"
