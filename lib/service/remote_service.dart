import 'dart:convert';

import 'package:app_find_job/models/Job.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RemotesService {
  static const String url = 'http://172.29.192.1:2001/api/Job';
  static List<Job> parseJobs(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Job> jobs = list.map((model) => Job.fromJson(model)).toList();

    return jobs;
  }

  static Future<List<Job>> fetchJobs({int page = 1}) async {
    final response = await http.get(Uri.parse('$url'));
    if (response.statusCode == 200) {
      return compute(parseJobs, response.body);
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}
