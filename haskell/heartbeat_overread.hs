import qualified Data.ByteString.Char8 as BC
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let claimed = read (head args) :: Int
      buf = BC.pack ("hi" ++ "SECRET-KEY-0042" ++ replicate 47 '\0')
      payload = BC.take 2 buf
  BC.putStrLn (BC.take claimed payload) -- CONTROL! BC.putStrLn (if claimed > BC.length payload then BC.pack "invalid" else BC.take claimed payload)
