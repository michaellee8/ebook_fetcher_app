import 'package:http/http.dart' as http;
import 'dart:io' show HttpException;

class AppHttpClient extends http.BaseClient {}

class HttpStatusException implements HttpException {
  HttpStatusException({
    required this.statusCode,
    required this.method,
    required this.uri,
  });

  final int statusCode;
  final String method;

  @override
  final Uri uri;

  @override
  String get message => "Failing http status $statusCode in $method $uri";
}

extension IsOk on http.Response {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }
}
