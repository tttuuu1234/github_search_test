import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'path.dart';

class HttpClient {
  final accessToken = const String.fromEnvironment('GIT_HUB_ACCESS_TOKEN');

  Future<http.Response> get({
    required ApiPath apiPath,
    String? parameter,
    Map<String, dynamic>? query,
  }) async {
    log('---Start http request get---');
    final path =
        parameter == null ? apiPath.value : '${apiPath.value}/$parameter';
    // https使用の場合、valueもStringにしていないとエラーで落ちてしまうため
    final queryParameter = query?.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    final url = Uri.https('api.github.com', '/$path', queryParameter);
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/vnd.github+json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    debugPrint(response.headers.toString());
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    log('---Finish http request get---');

    _handleException(response);
    return response;
  }
}

void _handleException(http.Response response) {
  switch (response.statusCode) {
    case 400:
      throw Exception(_getErrorMessage(response));
    case 404:
      throw Exception(_getErrorMessage(response));
    default:
  }
}

String _getErrorMessage(http.Response response) {
  var message = '';
  switch (response.statusCode) {
    case 400:
      message = '400です';
      break;
    case 404:
      message = '404です！！';
      break;
    default:
  }

  return message;
}
