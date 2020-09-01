import 'package:flutter/material.dart';
import 'package:module5_covid19_stats/constants.dart';
import 'package:module5_covid19_stats/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: kInactiveColor),
      home: HomePage(),
    ),
  );
}
