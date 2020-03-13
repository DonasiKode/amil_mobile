import 'package:http/http.dart' show Client;
import '../index.dart';

class Network {
  Client client = Client();

  Future<dynamic> getRequest(String url) async {
    final response = await client.get(
      "$url",
      headers: {},
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }

  Future<dynamic> putRequest(String url, dynamic body) async {
    final response = await client.put(
      "$url",
      headers: {
        'content-type': APPLICATION_JSON,
      },
      body: body,
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }

  Future<dynamic> postRequest(String url, dynamic body) async {
    final response = await client.post(
      "$url",
      headers: {
        'content-type': APPLICATION_JSON,
      },
      body: body,
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }
}
