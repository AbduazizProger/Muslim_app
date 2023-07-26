class Ayah {
  final int number;
  final String text;
  final int numberInSurah;
  final bool isSajda;
  final String surahName;

  Ayah({
    required this.numberInSurah,
    required this.number,
    required this.text,
    required this.isSajda,
    required this.surahName,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) {
    return Ayah(
      number: json['number'],
      text: json['text'],
      isSajda: json['sajda'],
      numberInSurah: json['numberInSurah'],
      surahName: json['surah']['name'],
    );
  }
}
