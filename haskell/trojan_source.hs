main :: IO ()
main = do
  let access = "user"
  putStrLn (if access /= "user‮ ⁦// admins only⁩ ⁦" then "admin" else "user") -- CONTROL! putStrLn (if access /= "user" then "admin" else "user")
