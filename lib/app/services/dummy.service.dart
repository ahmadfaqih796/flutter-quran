import 'package:dio/dio.dart';
import 'package:faqih_mobile/app/models/dummy.model.dart';

class DummyService {
  static DummyService? _instance;
  factory DummyService() => _instance ??= DummyService._();
  DummyService._();

  Future<DummyModel> getDummy() async {
    final dio = Dio();
    try {
      final response = await dio.get(
        // FlavorConfig.instance.variables['baseUrl'] + '/authentication',
        "https://dummyjson.com/products/1",
        // data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      final loginResponse = DummyModel.fromJson(response.data);
      return loginResponse;
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');
      rethrow;
    }
  }
}
// import 'package:dio/dio.dart';

// final dio = Dio();

// void request() async {
//   Response response;
//   response = await dio.get('/test?id=12&name=dio');
//   print(response.data.toString());
//   // The below request is the same as above.
//   response = await dio.get(
//     '/test',
//     queryParameters: {'id': 12, 'name': 'dio'},
//   );
//   print(response.data.toString());
// }
