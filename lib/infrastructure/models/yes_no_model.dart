class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  //Se crea este constructor para convertir el objeto a un mapa, que es lo que espera el jsonEncode
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) {
    // Convertir el JSON a un objeto YesNoModel
    return YesNoModel(
      answer: json['answer'] as String,
      forced: json['forced'] as bool,
      image: json['image'] as String,
    );
  }
}
