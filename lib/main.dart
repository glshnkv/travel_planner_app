import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_planner_app/travel_planner_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(TravelPlannerApp());
}
