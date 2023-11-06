class CountryModel {
  final String code;
  final String language;

  CountryModel(this.code, this.language);
}

List<CountryModel> countries = [
  CountryModel("GB", "English"),
  CountryModel("ID", "Indonesian"),
  CountryModel("SA", "Arabic"),
  CountryModel("CN", "Mandarin"),
  CountryModel("NL", "Dutch"),
  CountryModel("FR", "French"),
  CountryModel("DE", "German"),
  CountryModel("JP", "Japanese"),
  CountryModel("KR", "Korean"),
  CountryModel("PT", "Portuguese"),
];
