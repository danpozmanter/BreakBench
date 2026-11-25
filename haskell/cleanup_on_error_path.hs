import Control.Exception
import Control.Monad (forM_)
import System.Directory (removeFile)
import Text.Read (readMaybe)

scratch :: FilePath
scratch = "/tmp/bb_scratch/export.csv"

exportRows :: [String] -> IO ()
exportRows rows = do
  writeFile scratch "qty\n"
  forM_ rows $ \row ->
    case readMaybe row :: Maybe Int of
      Nothing -> throwIO (userError ("invalid row " ++ row)) -- BREAK!
      -- CONTROL! Nothing -> removeFile scratch >> throwIO (userError ("invalid row " ++ row))
      Just qty -> appendFile scratch (show qty ++ "\n")
  removeFile scratch

main :: IO ()
main = exportRows ["3", "x", "5"] `catch` \e -> const (putStrLn "export failed") (e :: IOException)
