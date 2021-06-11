import 'dart:convert';

import 'package:http/http.dart' as http;

class CovidApi {
  final http.Client _client = http.Client();

  Future getCovidDataIndonesia() async {
    final Uri url = Uri.parse('https://api.kawalcorona.com/indonesia');

    await Future.delayed(Duration(seconds: 2));

    final http.Response response = await _client.get(url);

    List<dynamic> responseData = jsonDecode(response.body);

    return responseData.first;
  }
}
