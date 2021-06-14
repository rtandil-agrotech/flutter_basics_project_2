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
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomePage(title: 'This is Home Page'));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondPage(title: 'This is Second Page'));
      default:
        return MaterialPageRoute(
            builder: (_) => _DefaultRouteErrorPage(settings: settings));
    }
  }
}

class _DefaultRouteErrorPage extends StatelessWidget {
  _DefaultRouteErrorPage({required RouteSettings settings})
      : _settings = settings;

  final RouteSettings _settings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for ${_settings.name}'),
      ),
    );
  }
}
