import 'package:flutter/material.dart';
import 'package:movie_app_with_api/pages/main_page.dart';
import 'package:movie_app_with_api/pages/splash_screen.dart';

void main() {
  runApp(
    SplashScreen(
      key: UniqueKey(),
      onIntializeCompleted: () => runApp(
        const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flect",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'home',
      routes: {"home": (context) => const MainPage()},
    );
  }
}
