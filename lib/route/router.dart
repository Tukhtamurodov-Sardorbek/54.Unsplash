import 'package:flutter/material.dart';
import 'package:unsplash/page/detail/detail.dart';
import 'package:unsplash/page/home/home.dart';
import 'package:go_router/go_router.dart';

enum Pages{
  HOME,
  DETAIL,
}

class AppRouter {
  static Map<String, String> appPages = {
    Pages.HOME.name : '/',
    Pages.DETAIL.name : ':detail',
  };

  static GoRouter appRouter(){
    return GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: appPages[Pages.HOME.name]!,
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
          routes: <GoRoute>[
            GoRoute(
              path: appPages[Pages.DETAIL.name]!,
              builder: (BuildContext context, GoRouterState state) {
                return const DetailPage();
              },
            )
          ]
        )
      ],
      errorPageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage(
          key: state.pageKey,
          child: Scaffold(body: Center(child: Text(state.error.toString()))),
        );
      },
    );
  }
}
