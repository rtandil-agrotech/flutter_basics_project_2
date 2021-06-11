import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_basics_project_2/secondpage.dart';

import 'homepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(secondary: Colors.blue),
      ),
      initialRoute: '/',
      routes: Router().routes,
    );
  }
}

class Router {
  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => HomePage(title: 'This is Homepage'),
    '/second': (context) => SecondPage(title: 'This is Secondpage'),
  };
}
