import System.Environment (getArgs)
import Control.Exception
import qualified Data.ByteString.Char8 as BC
import Control.Monad (forM)

processRequest :: String -> Int -> IO ()
processRequest request i = do
  let buf = BC.pack (request ++ "#" ++ show i) <> BC.replicate 4096 ' '
  if BC.head buf /= '{' then throwIO (userError "invalid request") else return ()

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  results <- forM [0 .. n - 1] (\i -> try (processRequest "not json" i) :: IO (Either IOException ()))
  putStrLn (if length [() | Left _ <- results] == n then "done" else "unexpected")
