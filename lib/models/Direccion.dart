import 'dart:convert';
import 'package:http/http.dart' as http;

class Direccion {
  String baseUrl = "http://172.16.26.157:8000/direccion/";
  Future<List> getAllDireccion() async {
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
