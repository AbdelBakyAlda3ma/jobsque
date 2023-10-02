class JobEntity {
  String? name;
  String? image;
  String? jobTimeType;
  String? jobType;
  String? jobLevel;
  String? jobDescription;
  String? jobSkill;
  String? compName;
  String? compEmail;
  String? compWebsite;
  String? aboutCompany;
  String? location;
  String? salary;
  int? id;
  int? favorites;
  int? expired;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool isSaved;
  JobEntity({
    this.name,
    this.image,
    this.jobTimeType,
    this.jobType,
    this.jobLevel,
    this.jobDescription,
    this.jobSkill,
    this.compName,
    this.compEmail,
    this.compWebsite,
    this.aboutCompany,
    this.location,
    this.salary,
    this.id,
    this.favorites,
    this.createdAt,
    this.updatedAt,
    this.expired,
    this.isSaved = false,
  });
}
