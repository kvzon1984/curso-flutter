import 'package:yes_no_app/domain/entities/message.dart';

// creo un modelo seguro para trabajar con la respuesta de la api 
// ya que me aseguro de transformar la respuesta json en un mapa
// o el mapa transformarlo en un json
// asi en caso de que cambie la respuesta de la api el cambio solo se hace aqui no en el resto del cogido
// en esta url https://quicktype.io/ genero este codigo

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMesageEntity() => Message(
    text: answer == 'yes' ? 'Si' : 'No',
    fromWho: FromWho.hers,
    imageUrl: image
  );
}

// class YesNoModel {
//   String answer;
//   bool forced;
//   String image;

//   YesNoModel({
//     required this.answer,
//     required this.forced,
//     required this.image,
//   });

//   factory YesNoModel.fromJsonMap(Map<String, dynamic> json) =>
//       YesNoModel(
//         answer: json['answer'],
//         forced: json['forced'],
//         image: json['image']
//       );
// }
