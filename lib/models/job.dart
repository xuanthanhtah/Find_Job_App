// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

List<Job> jobFromJson(String str) =>
    List<Job>.from(json.decode(str).map((x) => Job.fromJson(x)));

String jobToJson(List<Job> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Job {
  Job({
    required this.jobId,
    required this.jobName,
  });

  int jobId;
  String jobName;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        jobId: json["jobId"],
        jobName: json["jobName"],
      );

  Map<String, dynamic> toJson() => {
        "jobId": jobId,
        "jobName": jobName,
      };
}
