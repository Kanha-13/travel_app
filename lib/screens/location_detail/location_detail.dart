import 'package:flutter/material.dart';
import 'package:travel_place/model/location.dart';
import 'package:travel_place/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;
  LocationDetail(this._locationId);
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);
    // final location = locations.first; //or locations[0] both are same
    return Scaffold(
      appBar: AppBar(
        title: Text(location.locName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          ListView(children: [...textSections(location)])
        ],
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
