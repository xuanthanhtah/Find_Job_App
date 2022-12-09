import 'package:app_find_job/models/recuiter.dart';
import 'package:http/http.dart' as http;

class RemotesServiceRecuiter {
  static const String url = 'http://10.18.26.24:2001/api/Recruiter';
  static var client = http.Client();

  static Future<List<Recuiter>> fetchRecuiter() async {
    var response = await client.get(Uri.parse('$url'));
    if (response.statusCode == 200) {
      return recuiterFromJson(response.body);
    } else {
      throw Exception('Failed to load recuiter from API');
    }
  }
}
