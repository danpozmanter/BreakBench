-- LEVEL: STD

import Text.XHtml.Strict (stringToHtmlString)

main :: IO ()
main = putStrLn (stringToHtmlString "<a href=\"x\">Tom & Jerry</a>")
