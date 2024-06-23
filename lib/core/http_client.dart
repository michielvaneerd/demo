import 'package:funda/core/app_exception.dart';
import 'package:funda/core/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:xml/xml.dart';

class HttpClient {
  Uri _getUri(String path) {
    return Uri.parse(
        '${Constants.partnerApiRoot}/${path.replaceAll('{api_key}', Constants.apiKey)}');
  }

  Future<String> _get(String uri) async {
    final response = await http.get(_getUri(uri));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw AppException(message: response.body, code: response.statusCode);
    }
  }

  Future<XmlDocument> getXml(String uri) async {
    final response = await _get(uri);
    return XmlDocument.parse(response);
  }

  Future<Map<String, dynamic>> get(String uri) async {
    final response = await _get(uri);
    return convert.json.decode(response) as Map<String, dynamic>;
  }
}
