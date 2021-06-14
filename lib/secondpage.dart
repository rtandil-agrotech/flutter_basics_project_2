import 'package:flutter/material.dart';
import 'package:flutter_basics_project_2/covidApi.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final CovidApi api = CovidApi();

  late Future<Map<String, dynamic>> future;

  @override
  void initState() {
    future = api.getCovidDataIndonesia();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Page',
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final Map<String, dynamic> json =
                  snapshot.data as Map<String, dynamic>;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Country: ${json['country']}'),
                  Text('Confirmed: ${json['confirmed']} people'),
                  Text('Recovered: ${json['recovered']} people'),
                  Text('Death: ${json['deaths']} people'),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return Text('Connection Failed');
          },
        ),
      ),
    );
  }
}
