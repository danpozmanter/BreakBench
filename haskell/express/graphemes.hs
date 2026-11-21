-- LEVEL: PROJECT

import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Data.Text.ICU

main :: IO ()
main = TIO.putStrLn (T.concat (map brkBreak (take 9 (breaks (breakCharacter Root) (T.pack "abcdefgh\x1F44D\x1F3FDxyz")))))
