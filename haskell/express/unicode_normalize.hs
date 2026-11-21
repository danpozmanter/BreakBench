-- LEVEL: PROJECT

import qualified Data.Text as T
import Data.Text.ICU.Normalize2 (nfc)

main :: IO ()
main = putStrLn (if nfc (T.pack "e\x0301") == T.pack "\x00e9" then "equal" else "different")
