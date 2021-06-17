import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  //TODO: Step 2
  // Setup Navigation to Page 2 from Page 1 with one of the three navigation methods

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(secondary: Colors.blue),
      ),
      home: HomePage(
        title: 'Covid Data Checker',
      ),
    );
  }
}
