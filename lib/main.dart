// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:steve_ai/core/get_it/get_it.dart';
import 'package:steve_ai/core/router/go_router.dart';
import 'package:steve_ai/core/theme/theme.dart';
// import 'firebase_options.dart';

void main() async {
  configureDependenciesGetIt();

  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RouteGenerator _routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Steve Ai',
      debugShowCheckedModeBanner: false,
      routerConfig: _routeGenerator.routes,
      theme: themes[lightThemeName],
    );
  }
}
