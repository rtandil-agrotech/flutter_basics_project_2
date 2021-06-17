import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  //TODO: Step 4
  // Setup Future Builder for getCovidDataIndonesia
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<Map<String, dynamic>> getCovidDataIndonesia() async {
  //TODO: Step 3
  // Setup API Call for getCovidDataIndonesia()
  final jsonResult = await Future.delayed(Duration(seconds: 2));
  return jsonResult;
}
