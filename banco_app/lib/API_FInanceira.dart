import 'package:http/http.dart' as http;
import 'dart:convert';

//Implementa a API Financeira
Future<Map> getData() async {
  var url = Uri.parse(
    'https://api.hgbrasil.com/finance?format=json-cors&key=ab0f7554',
  );
  http.Response response = await http.get(url);

  return jsonDecode(response.body);
}
