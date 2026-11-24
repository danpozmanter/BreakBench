import System.Environment (getArgs)
import Data.List (isPrefixOf)
import System.FilePath ((</>))

main :: IO ()
main = do
  args <- getArgs
  let joined = "/srv/app/uploads" </> head args -- CONTROL! let joined = "/srv/app/uploads" </> dropWhile (== '/') (head args)
  putStrLn (if "/srv/app/uploads/" `isPrefixOf` joined then "inside" else "escaped")
