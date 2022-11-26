import 'package:app_find_job/models/jobinfor.dart';
import 'package:http/http.dart' as http;

class RemotesServiceJobInformation {
  static const String url =
      'http://192.168.1.248:2001/api/JobInformation/GetAll';
  static var client = http.Client();

  static Future<List<JobInformation>> fetchJobInformations() async {
    var response = await client.get(Uri.parse('$url'));
    if (response.statusCode == 200) {
      return jobInformationFromJson(response.body);
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}
