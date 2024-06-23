import 'package:funda/core/app_exception.dart';
import 'package:funda/core/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpClient {
  Uri _getUri(String path) {
    return Uri.parse(
        '${Constants.partnerApiRoot}/${path.replaceAll('{api_key}', Constants.apiKey)}');
  }

  Future<Map<String, dynamic>> get(String uri) async {
    try {
      final response = await http.get(_getUri(uri));
      if (response.statusCode == 200) {
        throw AppException(message: response.body, code: response.statusCode);
        return convert.json.decode(response.body) as Map<String, dynamic>;
      } else {
        throw AppException(message: response.body, code: response.statusCode);
      }
    } catch (ex) {
      throw AppException(
          message: ex.toString(), code: Constants.errorCodeUnknown);
    }
  }
}
