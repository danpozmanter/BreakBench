newtype Meters = Meters Double
newtype Seconds = Seconds Double

addM :: Meters -> Meters -> Meters
addM (Meters a) (Meters b) = Meters (a + b)

main :: IO ()
main = do
  let Meters total = addM (Meters 2) (Meters 3)
  let Meters wrong = addM (Meters 2) (Seconds 3) -- BREAK!
  print (round total :: Int)
