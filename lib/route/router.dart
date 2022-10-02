import 'package:auto_route/auto_route.dart';
import 'package:unsplash/page/home/home.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)

class AppRouter extends _$AppRouter {}
