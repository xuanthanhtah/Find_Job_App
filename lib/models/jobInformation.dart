class jobInformation {
  String companyName;
  String logoURL;
  bool status;
  String title;
  String jobInformationTime;
  double salary;
  String location;
  String jobtype;
  String description;
  String req;
  String benefits;

  jobInformation(
    this.companyName,
    this.logoURL,
    this.status,
    this.title,
    this.salary,
    this.jobInformationTime,
    this.location,
    this.jobtype,
    this.description,
    this.req,
    this.benefits,
  );

  static List<jobInformation> generatejobInformation() {
    return [
      jobInformation(
        'Google LLC,',
        'assets/images/google_logo.png',
        true,
        'Senior front end developer',
        2000,
        '26-12-2022',
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'full time',
        '• As a game developer in our team, you will work closely with graphic designer and backend developer for developing and distributing game to community.• You’ll be part of a cross-functional team that’s responsible for the full software development life cycle, from conception to deployment.',
        '• At least 2 years of experience with Cocos. • Diploma or Degree or in any IT related. • Excellent knowledge of Web/Mobile Game Development (Online/Offline). • Good knowledge of either JavaScript/Typescript. • Proficient knowledge of code versioning tools: GIT • Portfolio and experience in at least 2 games published to multiple platforms.',
        '• Working in a professional, friendly, well-equipped office. • Attractive salary and annual salary review. • Full social insurance, health insurance & unemployment insurance according to Vietnam Labour Law. • 12-day annual leave per year. • 13th month salary.',
      ),
      jobInformation(
        'Linkedin LLC,',
        'assets/images/linkedin_logo.png',
        false,
        'Senior front end developer',
        2000,
        '26-12-2022',
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'full time',
        'code full',
        'good Java',
        'OT forvever',
      ),
      jobInformation(
        'Airbnb LLC,',
        'assets/images/airbnb_logo.png',
        false,
        'Senior front end developer',
        2000,
        '26-12-2022',
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'full time',
        'code full',
        'good Java',
        'OT forvever',
      ),
      jobInformation(
        'Airbnb LLC,',
        'assets/images/airbnb_logo.png',
        false,
        'Senior front end developer',
        2000,
        '26-12-2022',
        'đường Hiệp Bình, \nHiệp Bình Chánh',
        'full time',
        'code full',
        'good Java',
        'OT forvever',
      ),
    ];
  }
}
