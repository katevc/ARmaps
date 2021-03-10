import Foundation
@propertyWrapper
struct ChattPropWrapper {
    private var chattVar: String?
    var wrappedValue: String? {
        get { return chattVar }
        set {
            if let newValue = newValue {
                chattVar = (newValue == "null" || newValue.isEmpty) ? nil : newValue
            } else {
                chattVar = nil
            }
        }
    }
    init() {}
    init(wrappedValue: String?) {
        self.wrappedValue = wrappedValue
    }
}
struct Venue{
    var venue_name: String?
    //var distance: String?
    var description: String?
    @ChattPropWrapper var imageUrl: String? = nil
    var lat: Float?
    var lon: Float?
    //add geodata afterwards
    static let nFields = 5
}
/*Ideas from the apple instruction page
  To create an extension to the Venue model and add an initializer that takes
  as an argument a Dictionary that was provided by JSONSerialization framework*/
extension Venue{
    init?(json: [String: Any]) {
        guard let name = json["name"] as? String,
              //extract all properties and cast them to types that we expect
              //if casting fails, the initilaization fails and we return nil
            let description = json["decription"] as? String,
            let imageurl = json["image_url"] as? String,
            let lat = json["lat"] as? Float,
            let lon = json["lon"] as? Float
            else {
                return nil
        }
        self.venue_name = name
        self.description = description
        self.imageUrl = imageurl
        self.lat = lat
        self.lon = lon
    }
}
