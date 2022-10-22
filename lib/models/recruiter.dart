import 'package:app_find_job/core/helpers/asset_helper.dart';

class recruiter {
  String CompanyName;
  String logoURL;
  String address;
  String RecruiterIntroduction;
  List<String> RecruiterGalleries;

  recruiter(
    this.CompanyName,
    this.logoURL,
    this.address,
    this.RecruiterIntroduction,
    this.RecruiterGalleries,
  );

  static List<recruiter> generateRecuiter() {
    return [
      recruiter(
        'Google LLC,',
        AssetHelper.googlelogo,
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'top 10 company in the world',
        [
          AssetHelper.googlelogo,
          AssetHelper.googlelogo,
          AssetHelper.googlelogo,
        ],
      ),
      recruiter(
        'Linkedin LLC,',
        AssetHelper.linkedinlogo,
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'top 10 company in the world',
        [
          AssetHelper.linkedinlogo,
          AssetHelper.linkedinlogo,
          AssetHelper.linkedinlogo,
        ],
      ),
      recruiter(
        'Airbnb LLC,',
        AssetHelper.airbnblogo,
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'top 10 company in the world',
        [
          AssetHelper.airbnblogo,
          AssetHelper.airbnblogo,
          AssetHelper.airbnblogo,
        ],
      ),
      recruiter(
        'Airbnb LLC,',
        AssetHelper.airbnblogo,
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'top 10 company in the world',
        [
          AssetHelper.airbnblogo,
          AssetHelper.airbnblogo,
          AssetHelper.airbnblogo,
        ],
      ),
    ];
  }
}
