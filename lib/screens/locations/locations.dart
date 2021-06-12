import 'package:flutter/material.dart';
import 'package:travel_place/app.dart';
import 'package:travel_place/model/location.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
        appBar: AppBar(title: Text("Locations")),
        body: ListView(
            children: locations
                .map((location) => GestureDetector(
                    child: Text(location.locName),
                    onTap: () => _onLocationTap(context, location.id)))
                .toList()));
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationId});
  }
}
