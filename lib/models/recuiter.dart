// To parse this JSON data, do
//
//     final recuiter = recuiterFromJson(jsonString);

import 'dart:convert';

List<Recuiter> recuiterFromJson(String str) =>
    List<Recuiter>.from(json.decode(str).map((x) => Recuiter.fromJson(x)));

String recuiterToJson(List<Recuiter> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recuiter {
  Recuiter({
    required this.id,
    required this.recruiterId,
    required this.companyName,
    required this.address,
    required this.companyIntroduction,
    required this.viewCount,
    required this.thumbnailCv,
  });

  String id;
  int recruiterId;
  String companyName;
  String address;
  String companyIntroduction;
  int viewCount;
  String thumbnailCv;

  factory Recuiter.fromJson(Map<String, dynamic> json) => Recuiter(
        id: json["id"],
        recruiterId: json["recruiterId"],
        companyName: json["companyName"],
        address: json["address"],
        companyIntroduction: json["companyIntroduction"],
        viewCount: json["viewCount"],
        thumbnailCv: json["thumbnailCv"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "recruiterId": recruiterId,
        "companyName": companyName,
        "address": address,
        "companyIntroduction": companyIntroduction,
        "viewCount": viewCount,
        "thumbnailCv": thumbnailCv,
      };
}
