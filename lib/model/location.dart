import 'package:travel_place/screens/locations/locations.dart';

import 'location_fact.dart';

class Location {
  int id;
  String locName;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.locName, this.imagePath, this.facts);

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (int i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, "Kedarnath Daham", "assets/images/kedarnathDham.jpg", [
        LocationFact("Summary1",
            "Kedarnath Temple, is a Hindu temple dedicated to God Shiva. Located on the Garhwal Himalayan range near the Mandakini river, Kedarnath is located in the state of Uttarakhand, India. Due to extreme weather conditions, the temple is open to the general public only between the months of April and November."),
        LocationFact("How to get their",
            "By Air. The nearest domestic airport is Jolly Grant Airport in Dehradun, about 239 km from Kedarnath and operates daily flights to Delhi.By Train. The nearest railhead is at Rishikesh, 221 km away.By Road. Visitors can board regular buses from Rishikesh and Kotdwar to Kedarnath.")
      ]),
      Location(1, "Kedarnath Daham", "assets/images/kedarnathDham.jpg", [
        LocationFact("Summary2",
            "Kedarnath Temple, is a Hindu temple dedicated to God Shiva. Located on the Garhwal Himalayan range near the Mandakini river, Kedarnath is located in the state of Uttarakhand, India. Due to extreme weather conditions, the temple is open to the general public only between the months of April and November."),
        LocationFact("How to get their",
            "By Air. The nearest domestic airport is Jolly Grant Airport in Dehradun, about 239 km from Kedarnath and operates daily flights to Delhi.By Train. The nearest railhead is at Rishikesh, 221 km away.By Road. Visitors can board regular buses from Rishikesh and Kotdwar to Kedarnath.")
      ]),
      Location(1, "Kedarnath Daham", "assets/images/kedarnathDham.jpg", [
        LocationFact("Summary3",
            "Kedarnath Temple, is a Hindu temple dedicated to God Shiva. Located on the Garhwal Himalayan range near the Mandakini river, Kedarnath is located in the state of Uttarakhand, India. Due to extreme weather conditions, the temple is open to the general public only between the months of April and November."),
        LocationFact("How to get their",
            "By Air. The nearest domestic airport is Jolly Grant Airport in Dehradun, about 239 km from Kedarnath and operates daily flights to Delhi.By Train. The nearest railhead is at Rishikesh, 221 km away.By Road. Visitors can board regular buses from Rishikesh and Kotdwar to Kedarnath.")
      ])
    ];
  }
}
