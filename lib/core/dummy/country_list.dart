class Country {
  String name;
  String code;
  String languageCode;

  Country({
    required this.name,
    required this.code,
    required this.languageCode,
  });
}

List<Country> countries = [
  Country(name: "United States", code: "US", languageCode: "en"),
  Country(name: "Malaysia", code: "MY", languageCode: "ms"),
  Country(name: "Singapore", code: "SG", languageCode: "en"),
  Country(name: "Indonesia", code: "ID", languageCode: "id"),
  Country(name: "Philippines", code: "PH", languageCode: "en"),
  Country(name: "Poland", code: "PL", languageCode: "pl"),
  Country(name: "India", code: "IN", languageCode: "hi"),
  Country(name: "Vietnam", code: "VN", languageCode: "vi"),
  Country(name: "China", code: "CN", languageCode: "zh"),
  Country(name: "Canada", code: "CA", languageCode: "en"),
  Country(name: "Saudi Arabia", code: "SA", languageCode: "ar"),
  Country(name: "Argentina", code: "AR", languageCode: "es"),
  Country(name: "Brazil", code: "BR", languageCode: "pt"),
];
