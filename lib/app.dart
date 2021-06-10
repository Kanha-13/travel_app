import 'package:flutter/material.dart';
import 'package:travel_place/screens/location_detail/location_detail.dart';
import 'package:travel_place/style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme: TextTheme(
            headline6: TitletextStyle,
            bodyText2: Body1TextStyle,
          )),
    );
  }
}
