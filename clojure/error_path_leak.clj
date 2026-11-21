(ns main)

(defn process-request [request id]
  (let [buf (byte-array 4096)
        text (.getBytes (str request "#" id))]
    (System/arraycopy text 0 buf 0 (alength text))
    (when (not= (aget buf 0) (byte (int \{)))
      (throw (ex-info "invalid request" {:id id})))))

(defn -main [& args]
  (let [n (parse-long (first args))
        failures (count (filter (fn [i]
                                  (try (process-request "not json" i) false
                                       (catch clojure.lang.ExceptionInfo _ true)))
                                (range n)))]
    (println (if (= failures n) "done" "unexpected"))))
