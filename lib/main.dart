import 'package:flutter/material.dart';
import 'package:flutter_online_shop/routes.dart';
import 'package:flutter_online_shop/screens/home1/home_screen.dart';
import 'package:flutter_online_shop/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}