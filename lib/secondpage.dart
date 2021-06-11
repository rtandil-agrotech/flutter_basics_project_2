import 'package:flutter/material.dart';
import 'package:flutter_basics_project_2/covidApi.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final CovidApi api = CovidApi();

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
          future: api.getCovidDataIndonesia(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              Map<String, dynamic> data = snapshot.data as Map<String, dynamic>;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Country : ${data['name']}'),
                  Text('Positive: ${data['positif']}'),
                  Text('Sembuh: ${data['sembuh']}'),
                  Text('Meninggal: ${data['Meninggal']}')
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return Text('No Data Found');
          },
        ),
      ),
    );
  }
}
