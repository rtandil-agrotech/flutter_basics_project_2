import 'package:flutter_basics_project_2/covidApi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing Covid Api', () async {
    final CovidApi api = CovidApi();

    final Map result = await api.getCovidDataIndonesia();

    print('keys: ${result.keys}, values: ${result.values}');

    expect(result is Map, true);
  });
}
