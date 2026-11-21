(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        [heads prefixes]
        (reduce (fn [[hs ps] i]
                  (let [buf (byte-array 32768 (byte (- (mod i 256) 128)))
                        big (String. (char-array 32768 (char (+ 97 (mod i 26)))))]
                    [(conj hs (java.util.Arrays/copyOfRange buf 0 16)) (conj ps (subs big 0 16))]))
                [[] []]
                (range n))]
    (binding [*out* *err*] (println (count prefixes)))
    (println (count heads))))
