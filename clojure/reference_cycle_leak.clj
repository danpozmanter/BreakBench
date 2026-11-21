(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        total (loop [i 0 total 0]
                (if (= i n)
                  total
                  (let [a (atom {:payload (byte-array 2048) :next nil})
                        b (atom {:payload (byte-array 2048) :next a})
                        o (atom {:payload (byte-array 2048) :callback nil})]
                    (swap! a assoc :next b)
                    (swap! o assoc :callback (fn [] (alength ^bytes (:payload @o))))
                    (recur (inc i) (+ total ((:callback @o)))))))]
    (println (if (neg? total) "unreachable" "done"))))
