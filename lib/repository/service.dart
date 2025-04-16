import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ServiceRepo {
  Future getApiData() async {
    try {
      Uri uri = Uri.parse(
        "https://flutter-batch3.advocate-portfolio.classicitltd.com/api/services-section/list",
      );
      var response = await http.get(uri);
      log("===========${response.statusCode}========");

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } catch (e) {
      log("===Error : $e");
    }
  }
}
