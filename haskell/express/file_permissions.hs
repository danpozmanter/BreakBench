-- LEVEL: STD

import System.Posix.Files
import System.Posix.IO
import Text.Printf (printf)

main :: IO ()
main = do
  let path = "/tmp/bb_perm.txt"
  exists <- fileExist path
  if exists then removeLink path else return ()
  fd <- openFd path WriteOnly defaultFileFlags {creat = Just (unionFileModes ownerReadMode ownerWriteMode), exclusive = True}
  closeFd fd
  st <- getFileStatus path
  printf "%o\n" (toInteger (fileMode st `intersectFileModes` accessModes))
  removeLink path
