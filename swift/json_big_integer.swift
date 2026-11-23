import Foundation

let text = #"{"id": 9007199254740993}"#
let event = try JSONSerialization.jsonObject(with: Data(text.utf8)) as! [String: Any]
print(event["id"]!)
