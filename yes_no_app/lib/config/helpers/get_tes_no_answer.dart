import 'package:dio/dio.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

import '../../domain/entities/message.dart';

// creo la peticion http

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('http://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMesageEntity();

    // return Message(
    //     text: yesNoModel.answer,
    //     fromWho: FromWho.hers,
    //     imageUrl: yesNoModel.image);
  }
}
