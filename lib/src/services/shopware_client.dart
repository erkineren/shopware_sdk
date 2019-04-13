import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ShopwareClient extends http.BaseClient {
  String baseUrl;
  final String username;
  final String apiToken;

  final http.Client _inner;
  final String _authString;

  ShopwareClient({@required this.baseUrl, @required this.username, @required this.apiToken, inner})
      : _authString = _getAuthString(username, apiToken),
        _inner = inner == null ? new http.Client() : inner {
    baseUrl = baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl;
  }

  static String _getAuthString(username, password) {
    return 'Basic ' + base64.encode(latin1.encode('${username}:${password}')).trim();
  }

  _setAuthString(http.BaseRequest request) {
    request.headers['Authorization'] = _authString;
  }

  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    var newRequest = http.Request(request.method, Uri.parse(baseUrl + request.url.toString()));
    newRequest.headers.addAll(request.headers);
    _setAuthString(newRequest);

    return _inner.send(newRequest);
  }
}
