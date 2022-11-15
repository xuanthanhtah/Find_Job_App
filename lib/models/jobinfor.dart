import 'dart:convert';

List<JobInformation> jobInformationFromJson(String str) =>
    List<JobInformation>.from(
        json.decode(str).map((x) => JobInformation.fromJson(x)));

String jobInformationToJson(List<JobInformation> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JobInformation {
  JobInformation({
    required this.jobInformationId,
    required this.jobTitle,
    required this.jobLevel,
    required this.jobType,
    required this.description,
    required this.workingLocation,
    required this.minSalary,
    required this.maxSalary,
    required this.viewCount,
    required this.status,
    required this.recruiterId,
    required this.jobId,
    required this.jobInformationTimeStart,
    required this.jobInformationTimeEnd,
  });

  int jobInformationId;
  String jobTitle;
  String jobLevel;
  String jobType;
  String description;
  String workingLocation;
  double minSalary;
  double maxSalary;
  int viewCount;
  int status;
  int recruiterId;
  int jobId;
  DateTime jobInformationTimeStart;
  DateTime jobInformationTimeEnd;

  factory JobInformation.fromJson(Map<String, dynamic> json) => JobInformation(
        jobInformationId: json["jobInformationId"],
        jobTitle: json["jobTitle"],
        jobLevel: json["jobLevel"],
        jobType: json["jobType"],
        description: json["description"],
        workingLocation: json["workingLocation"],
        minSalary: json["minSalary"],
        maxSalary: json["maxSalary"],
        viewCount: json["viewCount"],
        status: json["status"],
        recruiterId: json["recruiterId"],
        jobId: json["jobId"],
        jobInformationTimeStart:
            DateTime.parse(json["jobInformationTimeStart"]),
        jobInformationTimeEnd: DateTime.parse(json["jobInformationTimeEnd"]),
      );

  Map<String, dynamic> toJson() => {
        "jobInformationId": jobInformationId,
        "jobTitle": jobTitle,
        "jobLevel": jobLevel,
        "jobType": jobType,
        "description": description,
        "workingLocation": workingLocation,
        "minSalary": minSalary,
        "maxSalary": maxSalary,
        "viewCount": viewCount,
        "status": status,
        "recruiterId": recruiterId,
        "jobId": jobId,
        "jobInformationTimeStart": jobInformationTimeStart.toIso8601String(),
        "jobInformationTimeEnd": jobInformationTimeEnd.toIso8601String(),
      };
}
