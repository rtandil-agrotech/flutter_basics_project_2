import 'package:flutter_basics_project_2/covidApi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing Covid Api', () async {
    final CovidApi api = CovidApi();

    final result = await api.getCovidDataIndonesia();

    print(result.keys);

    expect(result is Map, true);
  });
}
