class Name {
  final String name;
  final String transliteration;
  final int number;
  final String en;

  Name({
    required this.name,
    required this.transliteration,
    required this.number,
    required this.en,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      name: json['name'],
      transliteration: json['transliteration'],
      number: json['number'],
      en: json['en']['meaning'],
    );
  }
}
