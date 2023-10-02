class SavedJobEntity {
  String companyLogo;
  String jobName;
  String companyLocation;
  String postedTime;
  bool canBeEarlyApplicant;
  SavedJobEntity({
    required this.companyLogo,
    required this.jobName,
    required this.companyLocation,
    required this.postedTime,
    required this.canBeEarlyApplicant,
  });
}
