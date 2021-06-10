import 'package:flutter/material.dart';
import 'package:travel_place/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Travel App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/kedarnathDham.jpg"),
          TextSection("Something 1",
              "I dont know what was something.......But i have to initialize it with something"),
          TextSection("Something 2",
              "I dont know what was something.......But i have to initialize it with something"),
          TextSection("Something 3",
              "I dont know what was something.......But i have to initialize it with something"),
        ],
      ),
    );
  }
}
