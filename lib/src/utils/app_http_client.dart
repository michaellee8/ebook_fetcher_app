import 'package:http/http.dart' as http;
import 'dart:io' show HttpException;

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_http_client.g.dart';

class AppHttpClient extends http.BaseClient {
  final http.Client _inner;

  AppHttpClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final res = await _inner.send(request);
    if (!res.ok) {
      throw HttpStatusException(
        statusCode: res.statusCode,
        method: request.method,
        uri: request.url,
      );
    }
    return res;
  }
}

@riverpod
AppHttpClient appHttpClient(AppHttpClientRef ref) {
  return AppHttpClient(http.Client());
}

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
  String get message => 'http error status $statusCode in $method $uri';
}

extension HttpResponseIsOk on http.Response {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }
}

extension HttpStreamedResponseIsOk on http.StreamedResponse {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }
}
