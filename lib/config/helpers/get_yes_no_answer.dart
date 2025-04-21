import 'package:chat_app/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get(
      'https://yesno.wtf/api',
      options: Options(headers: {'Accept': 'application/json'}),
    );

    throw UnimplementedError(
      'Implementar la lógica para obtener la respuesta de la API.',
    );
  }
}
