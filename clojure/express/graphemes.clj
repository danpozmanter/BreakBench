;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [s "abcdefgh\uD83D\uDC4D\uD83C\uDFFDxyz"
        it (doto (java.text.BreakIterator/getCharacterInstance) (.setText s))
        end (last (repeatedly 9 #(.next it)))]
    (println (subs s 0 end))))
