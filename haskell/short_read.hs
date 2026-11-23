import qualified Data.ByteString.Char8 as BS
import System.Process

main :: IO ()
main = do
  (_, Just child, _, handle) <- createProcess (proc "sh" ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"]) {std_out = CreatePipe}
  message <- BS.hGet child 16
  _ <- waitForProcess handle
  BS.putStrLn message
