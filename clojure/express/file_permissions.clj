;; LEVEL: STD

(ns main
  (:import (java.nio.file Files LinkOption Path)
           (java.nio.file.attribute PosixFilePermissions)))

(defn -main [& _]
  (let [path (Path/of "/tmp/bb_perm.txt" (into-array String []))]
    (Files/deleteIfExists path)
    (Files/createFile path (into-array [(PosixFilePermissions/asFileAttribute (PosixFilePermissions/fromString "rw-------"))]))
    (println (Integer/toOctalString (bit-and (Files/getAttribute path "unix:mode" (into-array LinkOption [])) 0777)))
    (Files/delete path)))
