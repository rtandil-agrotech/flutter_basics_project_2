import 'dart:convert';

import 'package:http/http.dart' as http;

class CovidApi {
  final http.Client _client;

  CovidApi({http.Client? client}) : _client = client ?? http.Client();

  Future<Map<String, dynamic>> getCovidDataIndonesia() async {
    final Uri url =
        Uri.parse('https://covid19-api.com/country?name=Indonesia&format=json');

    try {
      await Future.delayed(Duration(seconds: 1));

      final http.Response response = await _client.get(url);

      List<dynamic> responseData = jsonDecode(response.body);

      return responseData.first;
    } catch (exception) {
      print(exception);
      throw Exception(exception);
    }
  }
}
