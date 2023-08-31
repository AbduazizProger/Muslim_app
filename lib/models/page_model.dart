import 'package:Muslim/models/ayah_model.dart';

class PageModel {
  final int number;
  final List<Ayah> ayahs;

  PageModel({
    required this.number,
    required this.ayahs,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) {
    return PageModel(
      number: json['number'],
      ayahs:
          List.from(json['ayahs']).map((ayah) => Ayah.fromJson(ayah)).toList(),
    );
  }
}
