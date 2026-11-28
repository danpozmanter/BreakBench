import System.Environment (getArgs)
import qualified Data.Map as M

main :: IO ()
main = do
  args <- getArgs
  let stock = M.fromList [("apple", 3), ("plum", 4 :: Int)]
  putStrLn (maybe "unknown" (show . (+ 5)) (M.lookup (head args) stock))
