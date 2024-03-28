
import 'package:auto_route/auto_route.dart';


import 'package:flutter/material.dart';
import 'package:travel_planner_app/screens/onboarding/onboarding_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),

  ];
}
