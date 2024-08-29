import 'package:currency_app/models/currency.dart';
import 'package:dio/dio.dart';

class HttpRequest {
  final dio = Dio(BaseOptions(baseUrl: 'http://sasansafari.com/flutter/api.php'));
  List<Currency> currencyList = [];
  Future<List<Currency>> getCurrency() async {
    final response = await dio
        .get('?access_key=flutter123456');

      if (response.data is List<dynamic>) {
        (response.data as List<dynamic>).forEach((element) {
          currencyList.add(Currency.fromJson(element));
        });
      }
      return currencyList;
    }
    
  
}
