(ns main)

(defn logout [session]
  (swap! session dissoc :user))

(defn -main [& _]
  (let [session (atom {:user {:name "alice"}})]
    (when-let [user (:user @session)]
      (logout session)
      (println (count (:name user))))))
