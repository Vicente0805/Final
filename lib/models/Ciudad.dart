import 'dart:convert';
import 'package:http/http.dart' as http;

class Ciudad {
  String baseUrl = "http://192.168.1.70:8000/ciudad/";
  Future<List> getAllCiudad() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
