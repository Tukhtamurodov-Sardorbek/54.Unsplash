import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unsplash/bloc/bloc.dart';
import 'package:unsplash/route/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/data/repository/photo_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // * Orientation
  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // * StatusBar & NavigationBar Colors
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.black,
    ),
  );
  
  // * To hide both navigation and status bars
  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(
    BlocProvider<PostBloc>(
      create: (context) => PostBloc(PhotoRepository()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

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
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
