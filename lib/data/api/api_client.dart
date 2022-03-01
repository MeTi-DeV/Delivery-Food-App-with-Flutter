import 'package:get/get.dart';


//comment : create a class for api will call to server use GetConnect and GetxService

class ApiClient extends GetConnect implements GetxService {
  //comment : create token for each user will come to app
  late String token;
    //comment : base of our url will connect to server
  final String appBaseUrl;
    //comment :  _mainHeraders use for server that server you will receive this type of data
  late Map<String, String> _mainHeraders;
  ApiClient({required this.appBaseUrl}) {
      //comment : baseUrl and time out is form GetConnect and _mainHeraders put require values
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeraders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
    //comment : create this function to get data form server it's get uri(http url)
    //  and return Response value
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
