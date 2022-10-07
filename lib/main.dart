import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:unsplash/bloc/bloc.dart';
import 'package:unsplash/data/local/posts.dart';
import 'package:unsplash/data/local/hive_database.dart';
import 'package:unsplash/route/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/data/repository/photo_repository.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // * Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // * StatusBar & NavigationBar Colors
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.black,
    ),
  );

  // * To hide both navigation and status bars
  SystemChrome.setEnabledSystemUIOverlays([]);

  runZonedGuarded<Future<void>>(
    () async {
      await Hive.initFlutter();
      Hive.registerAdapter(PostsAdapter());
      await LocalDatabase.getInstance();

      runApp(
        BlocProvider<PostBloc>(
          create: (context) => PostBloc(PostRepository()),
          child: const MyApp(),
        ),
      );
    },
    (error, stack) {
      print('#########################################################');
      print('ERROR: $error');
      print('\nStackTrace: $stack');
      print('#########################################################');
    },
  );
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (kDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
  };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Unsplash Posts',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),

      routerConfig: AppRouter.appRouter(),

      // * To remove the glow on the whole application
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoGlowBehavior(),
          child: child!,
        );
      },
    );
  }
}

class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
