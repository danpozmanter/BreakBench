import Data.Aeson (Value, decode)
import qualified Data.ByteString.Lazy.Char8 as BL
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let depth = read (head args) :: Int
      text = BL.pack (replicate depth '[' ++ replicate depth ']')
  putStrLn (maybe "refused" (const "parsed") (decode text :: Maybe Value)) -- CONTROL! putStrLn (if depth > 1000 then "refused" else maybe "refused" (const "parsed") (decode text :: Maybe Value))
