import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:travel_planner_app/models/travel_model.dart';
import 'package:travel_planner_app/screens/travel/travel_bloc/travel_bloc.dart';
import 'package:travel_planner_app/travel_planner_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Hive.initFlutter();
  Hive.registerAdapter(TravelModelAdapter());
  await Hive.openBox('travels');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<TravelBloc>(create: (context) => TravelBloc()),
      ],
      child: TravelPlannerApp(),
    ),
  );
}
