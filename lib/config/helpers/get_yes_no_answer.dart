import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get(
      'https://yesno.wtf/api',
      options: Options(headers: {'Accept': 'application/json'}),
    );
    //lA PETICION A LA API SE HACE CON DIO, QUE ES UNA LIBRERIA DE FLUTTER PARA HACER PETICIONES HTTP

    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    // ACA LO QUE SE HACE ES QUE SE TRANSFORMA LA RESPUESTA DE LA API EN UN OBJETO DE TIPO YESNOMODEL, QUE ES UN MODELO QUE SE CREO PARA TRANSFORMAR LA RESPUESTA DE LA API EN UN OBJETO DE TIPO YESNOMODEL
    // Y SE LE PASA LA RESPUESTA DE LA API COMO PARAMETRO AL CONSTRUCTOR DEL MODELO, SI LA RESPUESTA DE LA API CAMBIA SE DEBE CAMBIAR SOLAMENTE EN EL MODELO, NO EN LA CLASE QUE HACE LA PETICION A LA API
    //MESSAGE NO SE TENDRIA QUE CAMBIAR, YA QUE ES UNA CLASE QUE SE CREO PARA MANEJAR LOS MENSAJES EN LA APLICACION, Y NO DEPENDE DE LA RESPUESTA DE LA API
    return yesNoModel.toMessageEntity();
    // ACA SE TRANSFORMA EL OBJETO DE TIPO YESNOMODEL EN UN OBJETO DE TIPO MESSAGE, QUE ES EL QUE SE UTILIZA EN LA APLICACION
  }
}
